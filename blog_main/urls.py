"""
URL configuration for blog_main project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import include, path
from blog_main import views
from django.conf.urls.static import static
from django.conf import settings
# name of views cant be same
from blogs import views as BlogViews

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home, name='home'),
    path('category/', include('blogs.urls')),
    path('blog/<slug:slug>/', BlogViews.single_blog, name='single_blog'),
    
    # Search endpoint
    path('blogs/search/', BlogViews.search , name='search'),
    
    # Register url patterns
    path('register/', views.register , name='register'),
    
    # Login url pattern
    path('login/', views.login , name='login'),
    
    #Log out
    path('logout/', views.logout, name='logout'),
    
    # Dashboards
    path('dashboard/', include('dashboards.urls')),
    
] + static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)
