from django.http import HttpResponse
from django.shortcuts import get_object_or_404, redirect, render
from .models import Blog, Category

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
