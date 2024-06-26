from django.contrib import admin
from blogs.models import Blog, Category, Comment

class BlogAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('title', )}
    list_display = ('title', 'category', 'author', 'status', 'is_featured')
    # category__category_name = from foreign key we want category_name
    search_fields = ('id', 'title', 'category__category_name', 'status',)
    list_editable = ('is_featured', 'status',)


class CategoryAdmin(admin.ModelAdmin):
    pass


# Register your models here.
admin.site.register(Category, CategoryAdmin)
admin.site.register(Blog, BlogAdmin)
admin.site.register(Comment)
