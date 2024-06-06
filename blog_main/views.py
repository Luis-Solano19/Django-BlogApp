from django.shortcuts import redirect, render
from assignments.models import About
from blogs.models import Blog
from .forms import RegisterForm
from django.contrib.auth.forms import AuthenticationForm
from django.contrib import auth


def home(request):
    # Already passed in on context_processors
    # categories = Category.objects.all()
    featured_posts = Blog.objects.filter(is_featured = True, status='Published').order_by('-updated_at')
    posts = Blog.objects.filter(is_featured=False, status='Published')
    try:
        about_info = About.objects.get()
    except:
        about_info = None
    
    context = {
        # 'categories':categories,
        'featured_posts': featured_posts,
        'posts':posts,
        'about': about_info,
    }
    return render(request, 'home.html', context=context)



def register(request):
    if request.method == "POST":
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
        else:
            print(form.errors)
            
    else:
        form = RegisterForm()
    
    context = {
        'form':form
    }
    return render(request, 'register.html', context=context)


def login(request):
    if request.method == "POST":
        form = AuthenticationForm(request, request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
            # Returns User if exists.
            user = auth.authenticate(username=username, password=password)
            if user is not None:
                auth.login(request, user)
            
            return redirect('dashboard')
        
        else:
            print(form.errors)
    else:
        # Provided by Django
        form = AuthenticationForm()
    
    context = {
        'form': form,
    }
    return render(request, 'login.html', context=context)


def logout(request):
    auth.logout(request)
    return redirect('home')