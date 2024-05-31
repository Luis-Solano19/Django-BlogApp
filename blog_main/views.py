from django.shortcuts import render
from assignments.models import About, SocialMedia
from blogs.models import Blog


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