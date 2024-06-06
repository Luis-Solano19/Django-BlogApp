# Context predetermined to be shown on different pages whenever is is provided or called on jinja
# No need to mention them on context =  {}

from .models import Category
from assignments.models import SocialMedia


def get_categories(request):
    categories = Category.objects.all().order_by('created_at')
    
    return dict(categories = categories)

def get_socialmedia_links(request):
    social_media_links = SocialMedia.objects.all()
    return dict(social_media_links = social_media_links)