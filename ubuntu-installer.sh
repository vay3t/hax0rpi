#!/bin/bash

# Colors
BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'

# Check distro
if [ `lsb_release -c | awk '{print $2}'` != bionic ]; then
	echo -e "\n${RED}[!] Your distro is not supported\n${NC}"
	exit 1
fi

# Check root
if [ "$(id -u)" == 0 ]; then
	echo -e "\n${RED}[!] Do not use this script with sudo\n${NC}"
	exit 1
fi

echo -e "${CYAN}[>] Press ENTER to continue, CTRL+C to abort.${NC}"
read INPUT
echo ""

sudo apt update
sudo apt dist-upgrade -y

sudo apt install -y \
		gnome-session-flashback \
		aircrack-ng \
		mdk3 \
		adb \
		fastboot \
		apache2 \
		arp-scan \
		cherrytree \
		curl \
		crunch \
		docker \
		dnsmasq \
		dsniff \
		encfs \
		filezilla \
		gimp \
		git \
		hexchat \
		hostapd \
		htop \
		hydra \
		iw \
		libapache2-mod-php \
		libreoffice \
		macchanger \
		masscan \
		nmap \
		net-tools \
		obs-studio \
		openvpn \
		php \
		python-dev \
		python-pip \
		python3-dev \
		python3-pip \
		shred \
		sqlmap \
		ssh \
		tcpdump \
		telegram-desktop \
		testdisk \
		tor \
		transmission \
		tree \
		vlc \
		wireless-tools \
		wireshark \
		whois \
		zeal;
		
# install scapy
sudo pip install scapy
sudo apt install -y python-matplotlib python-pyx python-ipython

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
sudo apt install go -y
go get github.com/bettercap/bettercap
cd go/bin/
git clone https://github.com/bettercap/caplets
cd

# install thefuck
sudo apt install python3-dev python3-pip
sudo pip3 install thefuck
sed -i "94i\eval \$(thefuck --alias)\n# You can use whatever you want as an alias, like for Mondays:\neval \$(thefuck --alias FUCK)\n" .bashrc
source .bashrc

# Wireshark remove warning
sudo mkdir -p /root/.wireshark/
sudo -c 'echo "privs.warn_if_elevated: FALSE" > /root/.wireshark/recent_common'
sudo mv -f /usr/share/wireshark/init.lua{,.disabled}


# create dedsec & arsenal
mkdir dedsec
mkdir arsenal
cd arsenal

# arsenal tools

# install weevely
git clone https://github.com/epinna/weevely3
cd weevely3
sudo apt-get install libncurses5-dev -y
sudo pip install -r requirements.txt --upgrade
cd && cd arsenal

# install sublist3r
git clone https://github.com/aboul3la/Sublist3r
cd Sublist3r
sudo pip install -r requirements.txt
cd && cd arsenal

# install theharvester
git clone https://github.com/laramies/theHarvester

# install kickthemout
git clone https://github.com/k4m4/kickthemout
cd kickthemout
sudo pip3 install -r requirements.txt
cd && cd arsenal


# install pixie-dust
#git clone https://github.com/wiire/pixiewps
#cd pixiewps*/
#cd src/
#make
#sudo make install
#cd && cd arsenal

# install reaver
#sudo apt-get -y install build-essential libpcap-dev sqlite3 libsqlite3-dev
#git clone https://github.com/t6x/reaver-wps-fork-t6x
#cd reaver-wps-fork-t6x*/
#cd src/
#./configure
#make
#sudo make install
#cd && cd arsenal

#wget http://lcamtuf.coredump.cx/afl/releases/afl-latest.tgz


# install kvm
if [grep vmx /proc/cpuinfo == true]; then
	sudo apt install -y qemu-kvm libvirt0 libvirt-bin virt-manager bridge-utils
	sudo systemctl enable libvirt-bin
	sudo gpasswd libvirt -a $(whoami)
	sudo apt install -y bridge-utils
	cat <<EOF | sudo tee /etc/network/interfaces
auto lo
iface lo inet loopback
auto br0
iface br0 inet dhcp
      bridge_ports ens3
      bridge_stp off
      bridge_maxwait 0
EOF
fi

# disable services
sudo update-rc.d apache2 disable
sudo update-rc.d bluetooth disable
sudo update-rc.d dnsmasq disable
sudo update-rc.d openvpn disable
sudo update-rc.d ssh disable
sudo update-rc.d tor disable

# disable cups
sudo systemctl stop cups
sudo systemctl stop cups-browsed
sudo systemctl disable cups
sudo systemctl disable cups-browsed

# fix ifaces
sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/g' /etc/default/grub
sudo update-grub

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


echo -e "${CYAN}[>] Press ENTER to reboot, CTRL+C to abort.${NC}"
read INPUT
echo ""
# reboot
sudo reboot
