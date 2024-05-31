from django.contrib import admin
from django.http import HttpRequest
from .models import About, SocialMedia

# Register your models here.

class AboutAdmin(admin.ModelAdmin):
    # Restriction so user can only add one!
    def has_add_permission(self, request):
        count = About.objects.all().count()
        if count == 0:
            return True
        return False

class SocialMediaAdmin(admin.ModelAdmin):
    list_display = ('platform', 'link', 'created_at', 'updated_at')
    list_editable = ('link',)

admin.site.register(About, AboutAdmin)
admin.site.register(SocialMedia, SocialMediaAdmin)
