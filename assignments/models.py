from django.db import models

# Create your models here.

class About(models.Model):
    about_heading = models.CharField(max_length=50, default='About Us')
    about_description = models.CharField(max_length=500)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name_plural = 'About'
    
    def __str__(self) ->str:
        return self.about_heading
    

class SocialMedia(models.Model):
    platform = models.CharField(max_length=50)
    link = models.URLField(max_length=200, unique=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self) -> str:
        return self.platform
    
