from django.urls import path

from . import views

app_name = 'media_catalog'

urlpatterns = [
    path('api/media/', views.MediaList.as_view(), name='index'),
    path('api/media/<int:pk>/', views.MediaDetail.as_view(), name='media-detail'),

    path('api/category/', views.CategoryList.as_view(), name='catory-list'),
    path('api/category/<int:pk>/', views.CategoryDetail.as_view(), name='category-detail'),

    path('api/creator/', views.CreatorList.as_view(), name='creator'),
    path('api/creator/<int:pk>/', views.CreatorDetail.as_view(), name='creator-detail'),

    path('api/provider/', views.ProviderList.as_view(), name='provider'),
    path('api/provider/<int:pk>/', views.ProviderDetail.as_view(), name='provider-detail'),
]