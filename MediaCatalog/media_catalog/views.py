from django.utils import timezone
from django.contrib.auth.models import User, Group

from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import OrderingFilter
from rest_framework import filters
from rest_framework import viewsets
from rest_framework import generics
from rest_framework.permissions import IsAuthenticated
from rest_framework.authentication import SessionAuthentication, TokenAuthentication


from drf_haystack.viewsets import HaystackViewSet

from . search_indexes import MediaIndex
from . models import Media, MediaPublish, Category, Provider, Creator, MediaUser
from . serializers import (
						MediaSerializer,
						MediaPublishSerializer,
						MediaSearchSerializer, 
						CategorySerializer, 
						CreatorSerializer, 
						ProviderSerializer,
						MediaUserSerializer,
						UserSerializer,
						GroupSerializer)


class MediaViewSet(viewsets.ModelViewSet):
	queryset = Media.objects.all()
	serializer_class = MediaSerializer

	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['title', 'originating_country', 'genre', 'artist', 'publisher']
	ordering_fields = '__all__'

	authentication_classes = [TokenAuthentication, SessionAuthentication,]
	permission_classes = [IsAuthenticated,]
	

class CategoryViewSet(viewsets.ModelViewSet):
	queryset = Category.objects.all()
	serializer_class = CategorySerializer

	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['name', 'description']
	ordering_fields = '__all__'

	authentication_classes = [TokenAuthentication, SessionAuthentication,]
	permission_classes = [IsAuthenticated,]
	

class CreatorViewSet(viewsets.ModelViewSet):
	queryset = Creator.objects.all()
	serializer_class = CreatorSerializer

	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['name', 'date_of_birth']
	ordering_fields = '__all__'

	authentication_classes = [TokenAuthentication, SessionAuthentication,]
	permission_classes = [IsAuthenticated,]
	

class ProviderViewSet(viewsets.ModelViewSet):
	queryset = Provider.objects.all()
	serializer_class = ProviderSerializer

	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['name', 'provider_rank']
	ordering_fields = '__all__'

	authentication_classes = [TokenAuthentication, SessionAuthentication,]
	permission_classes = [IsAuthenticated,]
	

class MediaUserViewSet(viewsets.ModelViewSet):
	queryset = MediaUser.objects.all()
	serializer_class = MediaUserSerializer

	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['name']
	ordering_fields = '__all__'

	authentication_classes = [TokenAuthentication, SessionAuthentication,]
	permission_classes = [IsAuthenticated,]

class MediaPublishViewSet(viewsets.ModelViewSet):
	serializer_class = MediaPublishSerializer

	filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
	filterset_fields = ['user', 'media']
	ordering_fields = '__all__'

	authentication_classes = [TokenAuthentication, SessionAuthentication,]
	permission_classes = [IsAuthenticated,]
	

	def get_queryset(self, *args, **kwargs):
		qs = MediaPublish.objects.filter(date_expiry__lt=timezone.now())
		return qs

class MediaSearchView(HaystackViewSet):
	index_models = [Media]
	serializer_class = MediaSearchSerializer

class UserList(generics.ListCreateAPIView):
	queryset = User.objects.all()
	serializer_class = UserSerializer

	authentication_classes = [TokenAuthentication, SessionAuthentication,]
	permission_classes = [IsAuthenticated,]

class UserDetails(generics.RetrieveAPIView):
	queryset = User.objects.all()
	serializer_class = UserSerializer

	authentication_classes = [TokenAuthentication, SessionAuthentication,]
	permission_classes = [IsAuthenticated,]

class GroupList(generics.ListAPIView):
	queryset = Group.objects.all()
	serializer_class = GroupSerializer

	authentication_classes = [TokenAuthentication, SessionAuthentication,]
	permission_classes = [IsAuthenticated,]
	
