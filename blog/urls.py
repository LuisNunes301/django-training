from django.urls import path
from .views import BlogListView

urlpartterns = [
   path("", BlogListView.as_view(), name="home"),
]