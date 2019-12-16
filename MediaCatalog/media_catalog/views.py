from django.shortcuts import render

from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import generics


from . models import Media, Category, Provider, Creator
from . serializers import (
						MediaSerializer, 
						CategorySerializer, 
						CreatorSerializer, 
						ProviderSerializer)


class MediaList(generics.ListCreateAPIView):
	queryset = Media.objects.all().order_by('-date_published')
	serializer_class = MediaSerializer
	filter_backends = [DjangoFilterBackend]
	filterset_fields = ['title', 'originating_country', 'genre', 'artist', 'publisher']


class MediaDetail(generics.RetrieveUpdateDestroyAPIView):
	queryset = Media.objects.all()
	serializer_class = MediaSerializer

class CategoryList(generics.ListCreateAPIView):
	queryset = Category.objects.all()
	serializer_class = CategorySerializer
	filter_backends = [DjangoFilterBackend]
	filterset_fields = ['name', 'description']


class CategoryDetail(generics.RetrieveUpdateDestroyAPIView):
	queryset = Category.objects.all()
	serializer_class = CategorySerializer


class CreatorList(generics.ListCreateAPIView):
	queryset = Creator.objects.all()
	serializer_class = CreatorSerializer
	filter_backends = [DjangoFilterBackend]
	filterset_fields = ['name', 'date_of_birth']


class CreatorDetail(generics.RetrieveUpdateDestroyAPIView):
	queryset = Creator.objects.all()
	serializer_class = CreatorSerializer

class ProviderList(generics.ListCreateAPIView):
	queryset = Provider.objects.all()
	serializer_class = ProviderSerializer
	filter_backends = [DjangoFilterBackend]
	filterset_fields = ['name', 'provider_rank']


class ProviderDetail(generics.RetrieveUpdateDestroyAPIView):
	queryset = Provider.objects.all()
	serializer_class = ProviderSerializer

