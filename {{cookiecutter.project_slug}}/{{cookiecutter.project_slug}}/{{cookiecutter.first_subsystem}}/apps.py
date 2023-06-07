from django.apps import AppConfig
from django.utils.translation import gettext_lazy as _


class {{ cookiecutter.first_subsystem.capitalize() }}Config(AppConfig):
    name = "{{ cookiecutter.project_slug }}.{{ cookiecutter.first_subsystem }}"
    verbose_name = _("{{ cookiecutter.first_subsystem.capitalize() }}")

