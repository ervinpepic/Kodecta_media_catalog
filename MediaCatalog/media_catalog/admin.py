from django.contrib import admin

from . models import Category, Creator, Media, MediaPublish, Provider, User


admin.site.register(Category)
admin.site.register(Creator)
admin.site.register(Media)
admin.site.register(MediaPublish)
admin.site.register(Provider)
admin.site.register(User)

