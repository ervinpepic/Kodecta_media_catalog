from rest_framework import serializers

from . models import Media, Category, Creator, Provider


class MediaSerializer(serializers.ModelSerializer):
	
	class Meta:
		model = Media
		fields = [
			'id', 
			'title', 
			'artist', 
			'publisher', 
			'originating_country', 
			'genre', 
			'publishing_date', 
			'date_published']


class CategorySerializer(serializers.ModelSerializer):
	
	class Meta:
		model = Category
		fields = ['name', 'description']

class CreatorSerializer(serializers.ModelSerializer):
    
    class Meta:
    	model = Creator
    	fields = ['name', 'date_of_birth']

class ProviderSerializer(serializers.ModelSerializer):
    
    class Meta:
    	model = Provider
    	fields = ['name', 'provider_rank']
    


		



