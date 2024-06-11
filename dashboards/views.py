from django.shortcuts import get_object_or_404, redirect, render
from blogs.models import Blog, Category
from django.contrib.auth.decorators import login_required
from .forms import CategoryForm, BlogPostForm, AddUserForm, EditUserForm
from django.template.defaultfilters import slugify
from django.contrib.auth.models import User

# Create your views here.


@login_required(login_url='login')
def dashboard(request):
    categs = Category.objects.all().count()
    blogs_count = Blog.objects.all().count()
    context = {
        'categs':categs,
        'blogs_count':blogs_count
    }
    return render(request, 'dashboard/dashboard.html', context=context)


@login_required
def categories(request):
    return render(request, 'dashboard/categories.html')


@login_required
def add_category(request):
    if request.method == "POST":
        form = CategoryForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('categories')

    form = CategoryForm()
    context = {
        'form': form
    }
    return render(request, 'dashboard/add_category.html', context=context)


@login_required
def edit_category(request, pk):
    category = get_object_or_404(Category, pk=pk)
    if request.method == "POST":
        form = CategoryForm(request.POST, instance=category)
        if form.is_valid():
            form.save()
            return redirect('categories')
    
    
    form = CategoryForm(instance=category) # Instance populates form with previous obtained object!!!!!!!!!!
    context = {
        'catego': category,
        'form':form
    }
    return render(request, 'dashboard/edit_category.html', context=context)


@login_required
def delete_category(request, pk):
    cat = get_object_or_404(Category, pk=pk)
    cat.delete()
    return redirect('categories')


@login_required
def posts(request):
    posts = Blog.objects.all()
    context = {
        'posts':posts
    }
    return render(request, 'dashboard/posts.html', context=context)


"""
    When uploading images to django model form
    1.- Form should contain encoding type
        enctype="multipart/form-data"
    2.- request.FILES -> takes files
"""


@login_required
def add_post(request):
    if request.method == "POST":
        form = BlogPostForm(request.POST, request.FILES) # request.FILES handles files sent through form.
        if form.is_valid():
            post = form.save(commit=False) # Temporarily save form or post
            post.author = request.user # Person who is logged in and writing the post
            post.save()
            title = form.cleaned_data['title']
            post.slug = slugify(title) + '-'+str(post.id)
            post.save()
            return redirect('posts')
        else:
            print('form is not valid')
            print(form.errors)
    
    form = BlogPostForm()
    context = {
        'form': form
    }
    return render(request, 'dashboard/add_post.html', context=context)


@login_required
def edit_post(request, pk):
    post = get_object_or_404(Blog, pk=pk)
    if request.method == "POST":
        form = BlogPostForm(request.POST, request.FILES, instance=post) # Again instance so that it know which form we were editing
        if form.is_valid():
            post = form.save()
            title = form.cleaned_data['title']
            post.slug = slugify(title) + '-'+str(post.id)
            post.save()
            return redirect('posts')
    
    form = BlogPostForm(instance=post)
    context = {
        'form':form,
        'post':post
    }
    return render(request, 'dashboard/edit_post.html', context=context)


@login_required
def delete_post(request, pk):
    post = get_object_or_404(Blog, pk=pk)
    post.delete()
    return redirect('posts')



@login_required
def users(request):
    users = User.objects.all()
    context = {
        'users': users
    }
    return render(request, 'dashboard/users.html', context=context)


def add_user(request):
    form = AddUserForm()
    if request.method == "POST":
        form = AddUserForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('users')
        else:
            print(form.errors)
    
    context = {
        'form':form
    }
    return render(request, 'dashboard/add_user.html', context=context)


def edit_user(request, pk):
    user = get_object_or_404(User,pk=pk)
    if request.method == 'POST':
        form = EditUserForm(request.POST, instance=user) # instance here is existing data
        if form.is_valid():
            form.save()
            return redirect('users')
    
    form = EditUserForm(instance=user)
    context = { 
        'form':form,
    }
    return render(request, 'dashboard/edit_user.html', context=context)

def delete_user(request, pk):
    user = get_object_or_404(User, pk=pk)
    user.delete()
    return redirect('users')
    