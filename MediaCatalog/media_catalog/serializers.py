from . models import Media
from rest_framework import serializers

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
		



