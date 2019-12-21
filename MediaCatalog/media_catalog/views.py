from django.utils import timezone

from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import OrderingFilter
from rest_framework import filters

from rest_framework import viewsets


from drf_haystack.viewsets import HaystackViewSet

from .search_indexes import MediaIndex
from . models import Media, MediaPublish, Category, Provider, Creator, User
from . serializers import (
						MediaSerializer,
						MediaPublishSerializer,
						MediaSearchSerializer, 
						CategorySerializer, 
						CreatorSerializer, 
						ProviderSerializer,
						UserSerializer)


class MediaViewSet(viewsets.ModelViewSet):
	queryset = Media.objects.all()
	serializer_class = MediaSerializer
	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['title', 'originating_country', 'genre', 'artist', 'publisher']
	ordering_fields = '__all__'

class CategoryViewSet(viewsets.ModelViewSet):
	queryset = Category.objects.all()
	serializer_class = CategorySerializer
	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['name', 'description']
	ordering_fields = '__all__'

class CreatorViewSet(viewsets.ModelViewSet):
	queryset = Creator.objects.all()
	serializer_class = CreatorSerializer
	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['name', 'date_of_birth']
	ordering_fields = '__all__'

class ProviderViewSet(viewsets.ModelViewSet):
	queryset = Provider.objects.all()
	serializer_class = ProviderSerializer
	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['name', 'provider_rank']
	ordering_fields = '__all__'

class UserViewSet(viewsets.ModelViewSet):
	queryset = User.objects.all()
	serializer_class = UserSerializer
	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['name']
	ordering_fields = '__all__'

class MediaPublishViewSet(viewsets.ModelViewSet):
	serializer_class = MediaPublishSerializer
	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['user', 'media']
	ordering_fields = '__all__'

	def get_queryset(self, *args, **kwargs):
		qs = MediaPublish.objects.filter(date_expiry__lt=timezone.now())
		return qs

class MediaSearchView(HaystackViewSet):
	index_models = [Media]
	serializer_class = MediaSearchSerializer







