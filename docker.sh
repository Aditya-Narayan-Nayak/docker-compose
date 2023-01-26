#!/bin/sh
sudo apt update -y
sudo apt install -y docker.io 2>/dev/null
sudo apt update 2>/dev/null
sudo apt get install docker-compose-plugin -y 2>/dev/null
