#!/bin/bash

mkdir -p ./.envs/.develop/

# Django
echo "DJANGO_ADMIN_URL=${DEV_DJANGO_ADMIN_URL}" >> ./.envs/.develop/.django
echo "DJANGO_SECRET_KEY=${DEV_DJANGO_SECRET_KEY}" >> ./.envs/.develop/.django
echo "DJANGO_SETTINGS_MODULE=config.settings.develop" >> ./.envs/.develop/.django
echo "DJANGO_ACCOUNT_ALLOW_REGISTRATION=False" >> ./.envs/.develop/.django
echo "REDIS_URL=redis://redis:6379/0" >> ./.envs/.develop/.django
echo "CELERY_BROKER_URL=redis://redis:6379/0" >> ./.envs/.develop/.django
echo "WEB_CONCURRENCY=4" >> ./.envs/.develop/.django
# Postgres
echo "POSTGRES_HOST=postgres" >> ./.envs/.develop/.postgres
echo "POSTGRES_PORT=5432" >> ./.envs/.develop/.postgres
echo "POSTGRES_DB={{ cookiecutter.project_slug }}" >> ./.envs/.develop/.postgres
echo "POSTGRES_USER=${DEV_POSTGRES_USER}" >> ./.envs/.develop/.postgres
echo "POSTGRES_PASSWORD=${DEV_POSTGRES_PASSWORD}" >> ./.envs/.develop/.postgres
