from django.contrib import admin

from . models import Category, Creator, Media, MediaUser, MediaPublish, Provider
 
admin.site.register(Category)
admin.site.register(Creator)
admin.site.register(Media)
admin.site.register(MediaPublish)
admin.site.register(MediaUser)
admin.site.register(Provider)

