#!/bin/sh
sudo apt update -y
apt install -y docker.io
curl -SL https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
git clone https://github.com/django-cms/django-cms-quickstart.git
cd django-cms-quickstart
docker compose build web
