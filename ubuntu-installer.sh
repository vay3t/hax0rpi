#!/bin/bash

sudo apt update
sudo apt dist-upgrade -y

sudo apt install -y \
		gnome-session-flashback \
		apache2 \
		curl \
		dnsmasq \
		git \
		hostapd \
		htop \
		iw \
		filezilla \
		macchanger \
		nmap \
		openvpn \
		php7.0 \
		python-dev \
		python-pip \
		wireshark \
		tcpdump \
		vlc \
		wireless-tools \
		ssh;

sudo pip install --upgrade pip
sudo pip install requests scapy scanless

# install fing
wget https://www.fing.io/wp-content/uploads/2016/09/overlook-fing-3.0.deb
sudo dpkg -i overlook-fing-3.0.deb
mv overlook-fing-3.0.deb Descargas/

# install sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# install bettercap
sudo apt-get install build-essential ruby-dev libpcap-dev -y
sudo gem install bettercap

mkdir dedsec
mkdir arsenal
cd arsenal

#git clone https://github.com/epinna/weevely3
#cd weevely3
#sudo apt-get install libncurses5-dev
#sudo pip install -r requirements.txt --upgrade
#cd ..

# install aircrack-ng
sudo apt-get -y install libssl-dev libnl-3-dev libnl-genl-3-dev libnl-idiag-3-200 libnl-idiag-3-dev ethtool
wget http://download.aircrack-ng.org/aircrack-ng-1.2-rc4.tar.gz
echo "decompress aircrack-ng-1.2-rc4.tar.gz"
tar -zxvf aircrack-ng-1.2-rc4.tar.gz
rm aircrack-ng-1.2-rc4.tar.gz
cd aircrack-ng-1.2-rc4
make
sudo make install
sudo airodump-ng-oui-update
cd
cd arsenal

# install dirb
wget https://sourceforge.net/projects/dirb/files/dirb/2.22/dirb222.tar.gz
tar -xzvf dirb222.tar.gz
rm dirb222.tar.gz
cd dirb222
./configure
make
sudo make install
cd
cd arsenal

sudo apt-get install cpanminus -y
git clone https://github.com/fwaeytens/dnsenum

git clone https://github.com/sqlmapproject/sqlmap
git clone https://github.com/laramies/theHarvester

git clone https://github.com/wifiphisher/wifiphisher.git # Download the latest revision
cd wifiphisher # Switch to tool's directory
sudo python setup.py install # Install any dependencies (Currently, hostapd, dnsmasq, PyRIC, blessings)
cd ..

# disable services
sudo update-rc.d apache2 disable
sudo update-rc.d bluetooth disable
sudo update-rc.d dnsmasq disable
sudo update-rc.d openvpn disable
sudo update-rc.d ssh disable
sudo update-rc.d cups disable
sudo update-rc.d cups-browsed disable

# fix ifaces
sudo ln -s /dev/null /etc/udev/rules.d/80-net-setup-link.rules

# network manager patch
echo <<EOF > NetworkManager.conf
[main]
plugins=ifupdown,keyfile,ofono
dns=dnsmasq

[ifupdown]
managed=false

[keyfile]
unmanaged-devices=interface-name:wlan1
EOF
sudo mv NetworkManager.conf /etc/NetworkManager/

# reboot
sudo reboot
