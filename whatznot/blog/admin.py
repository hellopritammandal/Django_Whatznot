from django.contrib import admin
from .models import Blog,BlogTag,BlogCategory,Comment


class BlogAdmin(admin.ModelAdmin):
    list_display = ('blog_image','title','category')
    search_fields = ('title','category','author','content','tags')
    list_filter = ('category','published_date')
    list_per_page = 10
admin.site.register(Blog, BlogAdmin,)

admin.site.register(BlogTag)

admin.site.register(BlogCategory)

admin.site.register(Comment)