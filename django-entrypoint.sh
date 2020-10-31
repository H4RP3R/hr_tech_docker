#!/bin/bash

echo 'Waiting for postgres'
sleep 10

echo 'Running migrations'
python manage.py makemigrations
python manage.py migrate
python manage.py loaddata *.xml

echo 'Starting app'
python manage.py runserver 0.0.0.0:8000
