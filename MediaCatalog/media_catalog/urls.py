from django.conf.urls import url
from django.urls import include

from rest_framework import routers

from . import views
from . views import UserList, UserDetails, GroupList

router = routers.DefaultRouter()

router.register(r'api/category', views.CategoryViewSet)
router.register(r'api/creator', views.CreatorViewSet)

router.register(r'api/media', views.MediaViewSet)
router.register(r'api/media-publish', views.MediaPublishViewSet, basename='media-expiry')
router.register(r'api/provider', views.ProviderViewSet)
router.register('api/searchview', views.MediaSearchView, basename='searchview')
router.register(r'api/user-media-publish', views.MediaUserViewSet)


urlpatterns = [	
	url(r'^o/', include('oauth2_provider.urls', namespace='oauth2_provider')),
	url(r'api/users/', UserList.as_view()),
	url(r'api/users/<pk>/', UserDetails.as_view()),
	url(r'api/groups/', GroupList.as_view()),
	
	]

urlpatterns += router.urls