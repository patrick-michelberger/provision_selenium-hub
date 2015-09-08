#!/bin/bash

sudo echo "Europe/Berlin" | sudo tee /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata

sudo apt-get update -y
sudo apt-get install -y language-pack-de

sudo docker run -d -p 4444:4444 --name selenium-hub selenium/hub:2.47.1