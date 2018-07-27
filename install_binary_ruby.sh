cd /opt

# Get ruby binary
sudo wget https://rvm.io/binaries/ubuntu/16.04/x86_64/ruby-2.5.1.tar.bz2
sudo tar xjvf ruby-2.5.1.tar.bz2
sudo rm ruby-2.5.1.tar.bz2
sudo ln -s /opt/ruby-2.5.1 /opt/ruby

# Set permissions
sudo groupadd ruby
sudo chmod -R g+w /opt/ruby /opt/ruby-2.5.1
sudo chgrp -R ruby /opt/ruby /opt/ruby-2.5.1

# Allow user(s) to use ruby
sudo usermod -a -G ruby $USER
echo "export PATH=$PATH:/opt/ruby/bin" >> ~/.bashrc

echo "Before using ruby, you need to logout and then log back in again."

