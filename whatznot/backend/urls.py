from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from . import views







urlpatterns = [
    path('', views.home, name='index'),
    path('about/', views.about, name='about'),
    path('why-choice-us/', views.why, name='why'),
    path('reviews/', views.reviews, name='reviews'),
    path('faqs/', views.faqs, name='faqs'),

    path('services/', views.services, name='services'),
    path('services/website-design-and-development-services', views.webservices, name='webservices'),
    path('services/mobile-app-design-and-development-services', views.mobileservices, name='mobileservices'),
    path('services/UI-and-UX-design-services', views.UIUX, name='UIUX'),

    path('portfolios/', views.all_portfolios, name='portfolios'),
    path('portfolios/<slug:slug>/', views.portfolio_detail, name='portfolio-detail'),

    path('terms-and-conditions/', views.terms, name='terms'),
    path('privacy-policy/', views.privacy, name='privacy'),
    path('refund-policy/', views.refund, name='refund'),





]




if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

