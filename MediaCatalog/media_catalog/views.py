from django.shortcuts import render

from . models import Media, Category, Provider, Creator
from . serializers import MediaSerializer

from rest_framework import generics

class MediaList(generics.ListCreateAPIView):
	queryset = Media.objects.all().order_by('-date_published')
	serializer_class = MediaSerializer


class MediaDetail(generics.RetrieveUpdateDestroyAPIView):
	queryset = Media.objects.all()
	serializer_class = MediaSerializer

