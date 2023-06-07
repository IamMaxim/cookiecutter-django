from django.conf import settings
from django.urls import path
from rest_framework.routers import BaseRouter, DefaultRouter, SimpleRouter


# Use this file to register DRF views/viewsets for your app.


router: BaseRouter
if settings.DEBUG:
    router = DefaultRouter()
else:
    router = SimpleRouter()


# router.register("path", YourViewSet, basename="basename")


app_name = "{{ cookiecutter.first_subsystem }}"
urlpatterns = [
    # path("path/", view=your_view, name="basename"),
] + router.urls
