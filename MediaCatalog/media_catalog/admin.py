from django.contrib import admin

from . models import Category, Creator, Media, Provider


admin.site.register(Category)
admin.site.register(Creator)
admin.site.register(Media)
admin.site.register(Provider)

