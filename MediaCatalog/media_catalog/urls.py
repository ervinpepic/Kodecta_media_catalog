from django.urls import path
from . import views

app_name = 'media_catalog'

urlpatterns = [
    path('media-api/', views.MediaList.as_view(), name='index'),
    path('media-api/<int:pk>/', views.MediaDetail.as_view(), name='media-detail'),
]