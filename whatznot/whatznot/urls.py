from django.contrib import admin
from django.urls import include, path
from django.views.generic import TemplateView
from django.conf import settings
from django.conf.urls.static import static






urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('backend.urls')),
    path('blogs/', include('blog.urls')),
    path('contact/', include('contact.urls')),
    
    path('404/', TemplateView.as_view(template_name='common/404.html'), name='custom_404'),





]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)


if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
