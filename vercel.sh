#!/bin/bash

# Install dependencies
python3 -m pip install --break-system-packages -r requirements.txt

# Migrate database (use --fake to skip actual schema changes on existing MongoDB data)
python3 manage.py makemigrations
python3 manage.py migrate --fake --noinput
