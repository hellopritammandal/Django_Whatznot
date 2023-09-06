from django.db import models
from django.utils.html import format_html
from django.utils.text import slugify
from django.contrib.auth.models import User

class BlogCategory(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name


class BlogTag(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class Blog(models.Model):
    title = models.CharField(max_length=200)
    category = models.ForeignKey(BlogCategory, on_delete=models.CASCADE)
    blog_feature_image = models.ImageField(upload_to='portfolio/images/')
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    content = models.TextField()
    slug = models.SlugField(unique=True, blank=True)
    tags = models.ManyToManyField(BlogTag)
    published_date = models.DateTimeField(auto_now_add=True)
    is_published = models.BooleanField(default=False)
    views = models.PositiveIntegerField(default=0)
    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.title)
        super(Blog, self).save(*args, **kwargs)

    def __str__(self):
        return self.title

    def blog_image(self):
        return format_html('<img src="/media/{}" style="width:65px;height:55px" />'.format(self.blog_feature_image))




class Comment(models.Model):
    blog = models.ForeignKey(Blog, on_delete=models.CASCADE)
    user = models.CharField(max_length=200)
    content = models.TextField()
    created_date = models.DateTimeField(auto_now_add=True)
    is_approved = models.BooleanField(default=False)

    def __str__(self):
        return f"Comment by {self.user} on {self.blog}"


