#!/bin/bash

pushd ~
git config --global color.ui true
git config --global user.name "gitmitch"
git config --global user.email "mitch.huff@gmail.com"
ssh-keygen -t rsa -b 4096 -C "mitch.huff@gmail.com"
popd
