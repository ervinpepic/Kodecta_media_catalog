from django.contrib.auth.models import User, Group

from rest_framework import serializers
from rest_framework.serializers import StringRelatedField

from drf_haystack.serializers import HaystackSerializer

from . models import Media, MediaPublish, Category, Creator, Provider, MediaUser
from . search_indexes import MediaIndex


class MediaSerializer(serializers.HyperlinkedModelSerializer):
	genre = serializers.StringRelatedField(many=True, read_only=True)
	publisher = serializers.StringRelatedField(many=True, read_only=True)
	artist = serializers.StringRelatedField(many=True, read_only=True)
	class Meta:
		model = Media
		fields = [
			'url',
			'id', 
			'title', 
			'artist', 
			'publisher', 
			'originating_country', 
			'genre', 
			'publishing_date', 
			'date_published']

class CategorySerializer(serializers.HyperlinkedModelSerializer):
	
	class Meta:
		model = Category
		fields = ['id', 'name', 'description']

class CreatorSerializer(serializers.HyperlinkedModelSerializer):
    
    class Meta:
    	model = Creator
    	fields = ['id', 'name', 'date_of_birth']

class ProviderSerializer(serializers.HyperlinkedModelSerializer):
    
    class Meta:
    	model = Provider
    	fields = ['id', 'name', 'provider_rank']
    
class MediaUserSerializer(serializers.HyperlinkedModelSerializer):
    
    class Meta:
    	model = MediaUser
    	fields = ['id', 'name']

class MediaPublishSerializer(serializers.HyperlinkedModelSerializer):
	user = serializers.StringRelatedField(read_only=True)
	media = serializers.StringRelatedField(read_only=True)

	class Meta:
		model = MediaPublish
		fields = ['id', 'user', 'media', 'date_expiry']

class MediaSearchSerializer(HaystackSerializer):
	class Meta:
		index_classes = [MediaIndex]
		fields = ['text', 'country_published', 'date']

class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('username', 'email', "first_name", "last_name")

class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ("name", )



