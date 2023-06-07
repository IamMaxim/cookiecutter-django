from django.conf import settings
from rest_framework.routers import DefaultRouter, SimpleRouter

from {{ cookiecutter.project_slug }}.users.api.views import UserViewSet

if settings.DEBUG:
    router = DefaultRouter()
else:
    router = SimpleRouter()

router.register("users", UserViewSet)


app_name = "api"
urlpatterns = [
    path("{{ cookiecutter.first_subsystem }}/", include("{{ cookiecutter.first_subsystem }}.api.api_router", namespace="{{ cookiecutter.first_subsystem }}")),
] + router.urls
