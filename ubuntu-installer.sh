#!/bin/bash

sudo apt update
sudo apt dist-upgrade -y

sudo apt install -y \
		gnome-session-flashback \
		apache2 \
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
sudo pip install requests scapy

wget https://www.fing.io/wp-content/uploads/2016/09/overlook-fing-3.0.deb
sudo dpkg -i overlook-fing-3.0.deb 

wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
sudo dpkg -i sublime-text_build-3126_amd64.deb

sudo apt-get install build-essential ruby-dev libpcap-dev -y
sudo gem install bettercap

mkdir arsenal
cd arsenal

sudo apt-get install curl default-jre -y
curl https://portswigger.net/DownloadUpdate.ashx?Product=Free -o burpsuite_free.jar

git clone https://github.com/epinna/weevely3
cd weevely3
sudo apt-get install libncurses5-dev
sudo pip install -r requirements.txt --upgrade
cd ..

sudo apt-get -y install libssl-dev libnl-3-dev libnl-genl-3-dev libnl-idiag-3-200 libnl-idiag-3-dev ethtool
wget http://download.aircrack-ng.org/aircrack-ng-1.2-rc4.tar.gz
echo "decompress aircrack-ng-1.2-rc4.tar.gz"
tar -zxvf aircrack-ng-1.2-rc4.tar.gz
rm aircrack-ng-1.2-rc4.tar.gz
cd aircrack-ng-1.2-rc4
make
sudo make install
sudo airodump-ng-oui-update
cd ../arsenal

sudo apt-get install cpanminus -y
git clone https://github.com/fwaeytens/dnsenum

git clone https://github.com/sqlmapproject/sqlmap
git clone https://github.com/laramies/theHarvester

sudo update-rc.d apache2 disable
sudo update-rc.d bluetooth disable
sudo update-rc.d dnsmasq disable
sudo update-rc.d openvpn disable
sudo update-rc.d ssh disable
sudo update-rc.d cups disable
sudo update-rc.d cups-browsed disable

sudo ln -s /dev/null /etc/udev/rules.d/80-net-setup-link.rules
