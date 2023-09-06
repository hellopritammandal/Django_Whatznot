from django.db import models
from django.utils.html import format_html
from django.utils.text import slugify



class FAQCategory(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class FAQ(models.Model):
    category = models.ForeignKey(FAQCategory, on_delete=models.CASCADE)
    question = models.CharField(max_length=255)
    answer = models.TextField()

    def __str__(self):
        return self.question

class Client(models.Model):
    name = models.CharField(max_length=100)
    image = models.ImageField(upload_to='Client/images/')

    def __str__(self):
        return self.name
    def client_image(self):
        return format_html('<img src="/media/{}" style="width:65px;height:55px" />'.format(self.image))




class PortfolioCategory(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name



class Portfolio(models.Model):

    portfolio_name = models.CharField(max_length=100)
    category = models.ManyToManyField(PortfolioCategory)
    portfolio_feature_image = models.ImageField(upload_to='portfolio/images/')
    client_name = models.CharField(max_length=100)
    team = models.CharField(max_length=100)
    service_name = models.CharField(max_length=100)
    date = models.DateField()
    cover_image = models.ImageField(upload_to='portfolio/cover_images/')
    overview = models.TextField()
    solution = models.TextField()
    reviews = models.ForeignKey('Review', on_delete=models.CASCADE)
    image1 = models.ImageField(upload_to='portfolio/images/')
    image2 = models.ImageField(upload_to='portfolio/images/')
    image3 = models.ImageField(upload_to='portfolio/images/')
    slug = models.SlugField(unique=True, blank=True)
    is_featured = models.BooleanField(default=False, verbose_name="Featured")

    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.portfolio_name)
        super(Portfolio, self).save(*args, **kwargs)

    def __str__(self):
        return self.portfolio_name

    def portfolio_image(self):
        return format_html('<img src="/media/{}" style="width:65px;height:55px" />'.format(self.portfolio_feature_image))









class Review(models.Model):
    author_name = models.CharField(max_length=100)
    author_image = models.ImageField(upload_to='review_images', null=True, blank=True)
    review_date = models.DateField()
    platform_name = models.CharField(max_length=100, null=True, blank=True)
    review_details = models.TextField()
    project_name = models.CharField(max_length=100)
    has_features = models.BooleanField(default=False)

    def __str__(self):
        return f'Review by {self.author_name} - {self.project_name}'

    def Client_image(self):
        return format_html('<img src="/media/{}" style="width:55px;height:55px" />'.format(self.author_image))














class ServiceLocation(models.Model):
    areaname = models.CharField(max_length=200)
    address = models.TextField()
    pin = models.CharField(max_length=200)
    def __str__(self):
        return f'{self.areaname} - {self.pin}'


class TeamMember(models.Model):
    name = models.CharField(max_length=100)
    designation = models.CharField(max_length=100)
    image = models.ImageField(upload_to='team_members/')

    def __str__(self):
        return self.name
    def team_image(self):
        return format_html('<img src="/media/{}" style="width:55px;height:55px" />'.format(self.image))