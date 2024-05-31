from django.http import HttpResponse
from django.shortcuts import get_object_or_404, redirect, render
from .models import Blog, Category

# Allows so make complex queries like OR
from django.db.models import Q

# Create your views here.

def posts_by_category(request, category_id):
    # Fetch posts that belongs to the category with the id category_id.
    posts = Blog.objects.filter(status = 'Published', category = category_id)
    # Use try and except when we want to do some custom action if smth does not exist
    # try:
    #     category = Category.objects.get(pk=category_id)
    # except:
    #     return redirect('home')
    
    # User get_object_or_404 when you want show 404 error page - 404.html or whatever error code.
    
    category = get_object_or_404(Category, pk=category_id)
    
    context = {
        'posts': posts,
        'category':category
    }
    
    return render(request, 'posts_category.html', context=context)

def single_blog(request, slug):
    single_blog = get_object_or_404(Blog, slug=slug, status='Published')
    context = {
        'single_post': single_blog,
    }
    
    return render(request, 'blog.html', context=context)


def search(request):
    keyword = request.GET.get('keyword')
    if keyword:
        blogs = Blog.objects.filter(Q(title__icontains=keyword) | Q(short_description__icontains=keyword) | Q(blog_body__icontains=keyword), status='Published', )
        context = {
        'blogs':blogs,
        'keyword':keyword,
    }
    else:
        context = {
        'blogs':None,
    }
    
    return render(request, 'search.html', context=context)
