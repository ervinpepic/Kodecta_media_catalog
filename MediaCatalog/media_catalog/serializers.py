from rest_framework import serializers
from rest_framework.serializers import StringRelatedField

from . models import Media, MediaPublish, Category, Creator, Provider, User


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
    
class UserSerializer(serializers.HyperlinkedModelSerializer):
    
    class Meta:
    	model = User
    	fields = ['id', 'name']

class MediaPublishSerializer(serializers.HyperlinkedModelSerializer):
	user = serializers.StringRelatedField(read_only=True)
	media = serializers.StringRelatedField(read_only=True)

	class Meta:
		model = MediaPublish
		fields = ['id', 'user', 'media', 'date_expiry']
		



