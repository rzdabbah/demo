#!/bin/bash


echo "Start Django server..."
python MovieDB/manage.py runserver 0.0.0.0:8000  


exec "$@"