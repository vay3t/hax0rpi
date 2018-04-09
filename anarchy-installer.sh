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
if [ `cat /etc/lsb-release | grep ID | cut -d"=" -f2` -ne Anarchy ]; then
	echo -e "\n${RED}[!] Your distro is not supported\n${NC}"
	exit 1
fi

# Check root
if [ "$(id -u)" -eq 0 ]; then
	echo -e "\n${RED}[!] Do not use this script with sudo\n${NC}"
	exit 1
fi


echo -e "${CYAN}[>] Press ENTER to continue, CTRL+C to abort.${NC}"
read INPUT
echo ""


sudo pacman -Sy
sudo pacman -Syu

sudo pacman -S \
		aircrack-ng \
		android-tools \
		apache \
		arp-scan \
		bettercap \
		curl \
		dnsmasq \
		dnsutils \
		docker \
		dsniff \
		encfs \
		filezilla \
		firefox \
		firefox-i18n-es-cl \
		gimp \
		git \
		glances \
		gnome-keyring \
		hexchat \
		hostapd \
		htop \
		hydra \
		iw \
		libreoffice-fresh \
		libreoffice-fresh-es \
		macchanger \
		masscan \
		mdk3 \
		metasploit \
		nmap \
		net-tools \
		obs-studio \
		openssh \
		openvpn \
		pixiewps \
		php \
		postgresql \
		python-pip \
		python2-pip \
		reaver \
		scapy \
		sqlmap \
		tcpdump \
		telegram-desktop \
		terminator \
		testdisk \
		thefuck \
		tmux \
		tor \
		torsocks \
		transmission-gtk \
		tree \
		vim \
		vlc \
		wireshark-gtk \
		whois \
		xarchiver \
		zaproxy \
		zeal;

yaourt -Syu
yaourt -S burpsuite
yaourt -S crunch
yaourt -S etcher
yoaurt -S evince-no-gnome
yaourt -S sublime-text-dev
yaourt -S weevely
sudo pip2 install pyyaml # for weevely

# install shodan
sudo pip2 install shodan

# oh-my-zsh

# set alias grep color
#echo "alias grep='grep --color=auto'" >> ~/.zshrc

# set alias thefuck
echo "eval \$(thefuck --alias)\n# You can use whatever you want as an alias, like for Mondays:\neval \$(thefuck --alias FUCK)\n" >> ~/.zshrc
source ~/.bashrc

# Wireshark remove warning
sudo mkdir -p /root/.wireshark/
sudo sh -c 'echo "privs.warn_if_elevated: FALSE" > /root/.wireshark/recent_common'
sudo mv -f /usr/share/wireshark/init.lua{,.disabled}

mkdir arsenal
mkdir dev
cd arsenal

# install from git

# download caplets bettercap
git clone https://github.com/bettercap/caplets

# install theharvester
git clone https://github.com/laramies/theHarvester

# install dirsearch
git clone https://github.com/maurosoria/dirsearch

# install knockpy
sudo pacman -S python2-dnspython
git clone https://github.com/guelfoweb/knock
cd knock
sudo python2 setup.py install
cd && cd arsenal

# install kickthemout
git clone https://github.com/k4m4/kickthemout
cd kickthemout
sudo pip install -r requirements.txt
cd && cd arsenal

# install sublist3r
git clone https://github.com/aboul3la/Sublist3r
cd Sublist3r
sudo pip install -r requirements.txt
cd && cd arsenal

cd

# fix terminal xfce4

# install nano-highlight
git clone git://github.com/serialhex/nano-highlight ~/.nano
echo include ~/.nano/* > ~/.nanorc

# install kvm
if [ `LC_ALL=C lscpu | grep Virtualization | awk '{print $2}'` == "VT-x"]; then
	sudo pacman -S qemu virt-manager dnsmasq iptables vde2 bridge-utils openbsd-netcat
	curl https://raw.githubusercontent.com/vay3t/hax0rpi/master/virt-start.sh > ~/arsenal/virt-start.sh
	chmod +x ~/arsenal/virt-start.sh
fi

# download wp6
curl https://www.wifipineapple.com/wp6.sh > ~/arsenal/wp6.sh
chmod +x ~/arsenal/wp6.sh

# create msfdb for metasploit
curl https://raw.githubusercontent.com/vay3t/hax0rpi/master/arch-msfdb > ~/arsenal/msfdb
chmod +x ~/arsenal/msfdb
sudo ~/arsenal/msfdb init

# fix ifaces
sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/g' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# network manager patch
curl https://raw.githubusercontent.com/vay3t/hax0rpi/master/NetworkManager.conf > NetworkManager.conf
sudo mv NetworkManager.conf /etc/NetworkManager/

echo -e "${CYAN}[>] Press ENTER to reboot, CTRL+C to abort.${NC}"
read INPUT
echo ""
# reboot
sudo reboot



# https://unix.stackexchange.com/questions/101806/why-doesnt-my-screen-lock-in-xfce
