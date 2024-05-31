from django.contrib import admin
from blogs.models import Blog, Category

class BlogAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('title', )}
    list_display = ('title', 'category', 'author', 'status', 'is_featured')
    # category__category_name = from foreign key we want category_name
    search_fields = ('id', 'title', 'category__category_name', 'status',)
    list_editable = ('is_featured', 'status',)


class CategoryAdmin(admin.ModelAdmin):
    def save_model(self, request, obj,form,change):
        obj.name = obj.name.title()
        super().save_model(request,obj,form,change)

# Register your models here.
admin.site.register(Category)
admin.site.register(Blog, BlogAdmin)