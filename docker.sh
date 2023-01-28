#!/bin/sh
sudo apt update -y
sudo apt install -y docker.io
curl -SL https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
git clone https://github.com/django-cms/django-cms-quickstart.git
cd django-cms-quickstart
docker compose build web
kill -INT 888
docker compose up -d database_default
kill -INT 888
docker compose run web python manage.py migrate
kill -INT 888
docker compose run web python manage.py createsuperuser
kill -INT 888
docker compose up -d
kill -INT 888
