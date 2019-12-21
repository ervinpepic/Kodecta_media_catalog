from haystack import indexes
from .models import Media


class MediaIndex(indexes.SearchIndex, indexes.Indexable):
    text = indexes.CharField(document=True, use_template=True)
    country_published = indexes.CharField(model_attr="originating_country")
    date = indexes.DateField(model_attr='date_published')

    def get_model(self):
        return Media

    def index_queryset(self, using=None):
        return self.get_model().objects.filter(created__lte=timezone.now())