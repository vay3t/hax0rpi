#!/bin/bash
apt-get install -y kali-linux-full cowsay
############## Extra g0tmi1k apps ###############

keyboardLayout=en
timezone=Europe/London

# Wireshark remove warning
mkdir -p /root/.wireshark/
echo "privs.warn_if_elevated: FALSE" > /root/.wireshark/recent_common
mv -f /usr/share/wireshark/init.lua{,.disabled}
 
# Fun MOTD
echo "Kali PI3 with Nexmon" | /usr/games/cowsay > /etc/motd

# Install bash colour


#--- Configure keyboard layout (location)
if [[ -n "${keyboardLayout}" ]]; then
  echo "Updating ${GREEN}location information${RESET} ~ keyboard layout (${BOLD}${keyboardLayout}${RESET})"
  geoip_keyboard=$(curl -s http://ifconfig.io/country_code | tr '[:upper:]' '[:lower:]')
  [ "${geoip_keyboard}" != "${keyboardLayout}" ] \
    && echo -e " ${YELLOW}[i]${RESET} Keyboard layout (${BOLD}${keyboardLayout}${RESET}) doesn't match what's been detected via GeoIP (${BOLD}${geoip_keyboard}${RESET})"
  file=/etc/default/keyboard; #[ -e "${file}" ] && cp -n $file{,.bkup}
  sed -i 's/XKBLAYOUT=".*"/XKBLAYOUT="'${keyboardLayout}'"/' "${file}"
else
  echo -e "\n\n ${YELLOW}[i]${RESET} ${YELLOW}Skipping keyboard layout${RESET} (missing: '$0 ${BOLD}--keyboard <value>${RESET}')..." 1>&2
fi
#--- Changing time zone
if [[ -n "${timezone}" ]]; then
  echo "Updating location information ~ time zone (${BOLD}${timezone}${RESET})"
  echo "${timezone}" > /etc/timezone
  ln -sf "/usr/share/zoneinfo/$(cat /etc/timezone)" /etc/localtime
  dpkg-reconfigure -f noninteractive tzdata
else
  echo -e "\n\n ${YELLOW}[i]${RESET} ${YELLOW}Skipping time zone${RESET} (missing: '$0 ${BOLD}--timezone <value>${RESET}')..." 1>&2
fi

# Depends for bluetooth
apt-get install -y bluez-firmware bluez
apt-get install -fy
 
# Add bluetooth packages from Raspberry Pi
# Make bluetooth work again:
# https://whitedome.com.au/re4son/topic/solved-guide-to-get-rpi3-internal-bluetooth-working/
 
wget https://archive.raspberrypi.org/debian/pool/main/p/pi-bluetooth/pi-bluetooth_0.1.1_armhf.deb
dpkg -i pi-bluetooth_0.1.1_armhf.deb
apt-mark hold pi-bluetooth
 
systemctl enable bluetooth

# install fing
wget https://www.fing.io/wp-content/uploads/2016/10/overlook-fing-3.0.deb
dpkg -i overlook-fing-3.0.deb

############################################################

echo "hdmi_ignore_edid=0xa5000080" >> /boot/config.txt
echo "hdmi_group=2" >> /boot/config.txt
echo "hdmi_mode=82" >> /boot/config.txt
echo "enable_uart=1" >> /boot/config.txt
