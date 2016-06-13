#!/bin/bash

curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
pushd ~/.rbenv/plugins/ruby-build/

# change this to checkout a different release version of ruby-build
git checkout v20160602
popd

# change these to install a different version of Ruby
rbenv install 2.3.1
rbenv global 2.3.1

rbenv rehash
