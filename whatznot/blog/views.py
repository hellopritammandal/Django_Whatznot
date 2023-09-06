# views.py
from django.shortcuts import render, get_object_or_404
from .models import Blog, BlogCategory,  Comment
from django.db.models import Count

# View for listing all blog posts
def all_blogs(request):
    current_page = 'blogs'
    blogs = Blog.objects.all()
    categories = BlogCategory.objects.all()  # Retrieve all blog categories
    context = {
        'categories': categories,  # Pass categories to the template
        'current_page': current_page,
        'blogs': blogs,
    }
    return render(request, 'blog/blog.html', context)

# View for displaying a specific blog post by slug



def blog_detail(request, slug):
    current_page = 'blog_detail'

    categories = BlogCategory.objects.annotate(blog_count=Count('blog'))

    blog = get_object_or_404(Blog, slug=slug)

    # Increment the view count for the specific blog post
    blog.views += 1
    blog.save()

    # Get related blog posts based on the category of the current blog post
    related_blog = Blog.objects.filter(
        category=blog.category  # Assuming you want to find related posts in the same category
    ).exclude(slug=slug)[:3]  # Exclude the current post from related posts

    # Get comments related to the blog post
    comments = Comment.objects.filter(blog=blog)


    context = {
        'blog': blog,
        'related_blog': related_blog,
        'categories': categories,
        'comments': comments,
        'current_page': current_page,
    }
    return render(request, 'blog/blog-details.html', context )



