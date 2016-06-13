#!/bin/bash

curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

gem install bundler
rbenv rehash

gem install rails -v 4.2.6
rbenv rehash

rails -v
