#!/bin/bash

mkdir -p ./.envs/.production/

# Django
echo "DJANGO_ADMIN_URL=${PROD_DJANGO_ADMIN_URL}" >> ./.envs/.production/.django
echo "DJANGO_SECRET_KEY=${PROD_DJANGO_SECRET_KEY}" >> ./.envs/.production/.django
echo "DJANGO_SETTINGS_MODULE=config.settings.production" >> ./.envs/.production/.django
echo "DJANGO_ACCOUNT_ALLOW_REGISTRATION=False" >> ./.envs/.production/.django
echo "REDIS_URL=redis://redis:6379/0" >> ./.envs/.production/.django
echo "CELERY_BROKER_URL=redis://redis:6379/0" >> ./.envs/.production/.django
echo "WEB_CONCURRENCY=4" >> ./.envs/.production/.django
# Postgres
echo "POSTGRES_HOST=postgres" >> ./.envs/.production/.postgres
echo "POSTGRES_PORT=5432" >> ./.envs/.production/.postgres
echo "POSTGRES_DB={{ cookiecutter.project_slug }}" >> ./.envs/.production/.postgres
echo "POSTGRES_USER=${PROD_POSTGRES_USER}" >> ./.envs/.production/.postgres
echo "POSTGRES_PASSWORD=${PROD_POSTGRES_PASSWORD}" >> ./.envs/.production/.postgres
