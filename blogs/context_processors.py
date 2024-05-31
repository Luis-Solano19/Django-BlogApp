# Context predetermined to be shown on different pages whenever is is provided or called on jinja
# No need to mention them on context =  {}

from .models import Category


def get_categories(request):
    categories = Category.objects.all()
    
    return dict(categories = categories)