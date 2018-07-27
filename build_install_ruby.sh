# Install prerequisites
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev -y

# Install ruby using ruby-build
git clone https://github.com/rbenv/ruby-build.git
PREFIX=/usr/local sudo ./ruby-build/install.sh
sudo ruby-build 2.5.1 /opt/ruby-2.5.1
sudo ln -s /opt/ruby-2.5.1 /opt/ruby

# Set permissions
sudo groupadd ruby
sudo chmod -R g+w /opt/ruby /opt/ruby-2.5.1
sudo chgrp -R ruby /opt/ruby /opt/ruby-2.5.1

# Allow user(s) to use ruby
sudo usermod -a -G ruby $USER
echo "export PATH=$PATH:/opt/ruby/bin" >> ~/.bashrc

echo "Before using ruby, you need to logout and then log back in again."

