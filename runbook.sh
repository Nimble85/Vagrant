#!bin/bash
echo "Prepare to project"
echo "https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04"
sudo apt update
sudo apt upgrade -y


echo "Step 1 – Install rbenv and Dependencies"
###sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev -y

sudo apt-get install autoconf -y
sudo apt-get install bison -y
sudo apt-get install build-essential -y
sudo apt-get install libssl-dev -y
sudo apt-get install libreadline6-dev -y
sudo apt-get install zlib1g-dev -y
sudo apt-get install libncurses5-dev -y
sudo apt-get install libffi-dev -y
sudo apt-get install libgdbm5 -y
sudo apt-get install libgdbm-dev -y

echo "~/.rbenv"
cd ~/
mkdir .rbenv

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
type rbenv


echo "Step 2 – Installing Ruby with ruby-build"
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install -l
rbenv install 2.5.1
rbenv global 2.5.1
ruby -v


echo "Step 3 – Working with Gems"
echo "gem: --no-document" > ~/.gemrc
gem install bundler
gem env home


echo "Step 4 – Installing Rails"
gem install rails
rbenv rehash
rails -v


echo "Step 5 – Updating rbenv"
cd ~/.rbenv
git pull

echo "FINISHED!!!"












