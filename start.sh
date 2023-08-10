#!/bin/sh

# Apply database migrations
python manage.py migrate

# Start Gunicorn server
gunicorn --bind 0.0.0.0:8000 core.wsgi:application
