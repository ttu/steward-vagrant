sudo apt-get update

sudo apt-get install -y curl unzip git-core build-essential 

sudo apt-get install -y libssl-dev
sudo apt-get install -y libpcap-dev
sudo apt-get install -y libavahi-client-dev
sudo apt-get install -y libavahi-core7
sudo apt-get install -y libnss-mdns
sudo apt-get install -y avahi-discover
sudo apt-get install -y libavahi-compat-libdnssd-dev
sudo apt-get install -y libusb-1.0-0-dev
sudo apt-get install -y libusb-dev
sudo apt-get install -y libglib2.0-dev
sudo apt-get install -y automake
sudo apt-get install -y libudev-dev
sudo apt-get install -y libical-dev
sudo apt-get install -y libreadline-dev
sudo apt-get install -y libdbus­glib-1-dev
sudo apt-get install -y libexpat1-dev
sudo apt-get install -y g++
sudo apt-get install -y libssl-dev
sudo apt-get install -y libbluetooth-dev
sudo apt-get install -y glib2.0

#curl -sL https://deb.nodesource.com/setup | sudo bash -
#sudo apt-get install -y nodejs

git config --global url."https://".insteadOf git://

cd ~
git clone https://github.com/joyent/node.git
cd node
git checkout v0.10.22 -b v0.10.22
./configure
make
sudo make install

cd ~
git clone git://github.com/creationix/nvm.git ~/.nvm
echo ". ~/.nvm/nvm.sh" >> ~/.bashrc  
. ~/.nvm/nvm.sh

nvm alias default v0.10.22

git clone https://github.com/TooTallNate/node-gyp.git
cd node-gyp
sudo npm install -g node-gyp

cd ~
mkdir devenv
cd devenv

cd /home/vagrant/devenv
wget http://www.kernel.org/pub/linux/bluetooth/bluez-4.101.tar.xz
tar -xvf bluez-4.101.tar.xz
cd bluez-4.101
./configure
make
sudo make install

cd /home/vagrant/devenv
git clone https://github.com/TheThingSystem/steward.git
cd steward/steward
rm -rf node_modules
sudo npm install -l

