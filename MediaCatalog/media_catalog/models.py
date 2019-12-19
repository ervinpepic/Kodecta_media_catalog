from django.db import models


class Creator(models.Model):
	name 				= models.CharField(max_length=50)
	date_of_birth		= models.DateField(auto_now_add=False, auto_now=False)

	class Meta:
		verbose_name = "Creator"
		verbose_name_plural = "Creators"

	def __str__(self):
		return self.name

class Provider(models.Model):
	name			= models.CharField(max_length=30)
	provider_rank 	= models.IntegerField(default=0)

	class Meta:
		verbose_name = "Provider"
		verbose_name_plural = "Providers"

	def __str__(self):
		return self.name

class Category(models.Model):
	name		= models.CharField(max_length=25)
	description	= models.TextField()

	class Meta:
		verbose_name = "Category"
		verbose_name_plural = "Categories"

	def __str__(self):
		return self.name

class Media(models.Model):
	title 					= models.CharField(max_length=120)
	artist 					= models.ManyToManyField(Creator)
	publisher 				= models.ManyToManyField(Provider)
	originating_country 	= models.CharField(max_length=50)
	genre 					= models.ManyToManyField(Category,)
	publishing_date			= models.DateField(auto_now=False, auto_now_add=False)
	date_published			= models.DateTimeField(auto_now_add=True)

	class Meta:
		verbose_name = "Media"
		verbose_name_plural = "Medias"

	def __str__(self):
		return self.title

	def get_absolute_url(self):
		return reverse("api:media-detail", kwargs={"title": self.title})

class User(models.Model):
	name = models.CharField(max_length=55)

	class Meta:
		verbose_name = "User"
		verbose_name_plural = "Users"

	def __str__(self):
		return self.name

class MediaPublish(models.Model):
	user 		= models.ForeignKey(User, on_delete=models.CASCADE)
	media 		= models.ForeignKey(Media, on_delete=models.CASCADE)
	date_expiry = models.DateTimeField('Date of expiry for media')

	class Meta:
		verbose_name = 'Media Publish'
		verbose_name_plural = 'Media Publishes'

	def __str__(self):		
		return  f"Assigned to:  {self.user}. - {self.media} -. Vaild through:-> {self.date_expiry}"
		

	


    
    

    