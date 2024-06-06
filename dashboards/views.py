from django.shortcuts import get_object_or_404, redirect, render
from blogs.models import Blog, Category
from django.contrib.auth.decorators import login_required
from .forms import CategoryForm
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


def categories(request):
    return render(request, 'dashboard/categories.html')


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

def edit_category(request, pk):
    category = get_object_or_404(Category, pk=pk)
    if request.method == "POST":
        form = CategoryForm(request.POST, instance=category)
        if form.is_valid():
            form.save()
            return redirect('categories')
    
    # Instance populates form.
    form = CategoryForm(instance=category)
    context = {
        'catego': category,
        'form':form
    }
    return render(request, 'dashboard/edit_category.html', context=context)

def delete_category(request, pk):
    cat = get_object_or_404(Category, pk=pk)
    cat.delete()
    return redirect('categories')
    