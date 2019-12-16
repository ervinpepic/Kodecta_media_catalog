from django.urls import path
from . import views

app_name = 'media_catalog'

urlpatterns = [
    path('api/media/', views.MediaList.as_view(), name='index'),
    path('api/media/<int:pk>/', views.MediaDetail.as_view(), name='media-detail'),
]