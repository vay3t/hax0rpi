# hax0rpi
```
pi@raspberrypi:~/hax0rpi $ ./hax0rpi 
               _                 ___             _              
              | |__   __ ___  __/ _ \ _ __ _ __ (_)             
              | '_ \ / _' \ \/ / | | | '__| '_ \| |             
              | | | | (_| |>  <| |_| | |  | |_) | |             
              |_| |_|\__,_/_/\_\\___/|_|  | .__/|_|             
                                          |_|                   
               
           A Raspberry Pi Hacker Tools suite by Vay3t           

----------------------------------------------------------------
    This installer will load a comprehensive of hacker tools    
      suite onto your Raspberry Pi. Note that the Raspbian      
     distribution must be installed onto the SD card before     
     proceeding. See README (if exist) for more information.
```

# Why
I do not like to be filled with tools, so I try to put the least possible

# How to run?

### git clone
```
sudo apt-get install git -y
git clone https://github.com/vay3t/hax0rpi
cd hax0rpi
chmod +x hax0rpi
./hax0rpi
cd
sudo rm -r hax0rpi/
sudo reboot
```

### curl
```
sudo apt-get install curl -y
curl -s https://raw.githubusercontent.com/vay3t/hax0rpi/master/hax0rpi | bash
sudo reboot
```

# How to install Raspbian from Linux

### RASPBIAN JESSIE WITH PIXEL
```
wget http://downloads.raspberrypi.org/raspbian/images/raspbian-2016-11-29/2016-11-25-raspbian-jessie.zip
unzip 2016-11-25-raspbian-jessie.zip
umount /dev/mmcblk0p1
umount /dev/mmcblk0p2
dd bs=4M if=2016-11-25-raspbian-jessie.img of=/dev/mmcblk0
```

### RASPBIAN JESSIE LITE
```
wget http://downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2016-11-29/2016-11-25-raspbian-jessie-lite.zip
unzip 2016-11-25-raspbian-jessie-lite.zip
umount /dev/mmcblk0p1
umount /dev/mmcblk0p2
dd bs=4M if=2016-11-25-raspbian-jessie-lite.img of=/dev/mmcblk0
```

more information: [https://www.raspberrypi.org/documentation/installation/installing-images/linux.md](https://www.raspberrypi.org/documentation/installation/installing-images/linux.md)

### KALI LINUX IN RPI
```
wget https://images.offensive-security.com/arm-images/kali-linux-2018.1a-rpi3-nexmon.img.xz
xz -d kali-linux-2018.1a-rpi3-nexmon.img.xz
umount /dev/mmcblk0p1
umount /dev/mmcblk0p2
dd bs=4M if=kali-linux-2018.1a-rpi3-nexmon.img of=/dev/mmcblk0
```

# Tools List

### Installed via apt-get:
 * apache2 - http daemon
 * arp-scan - scans lan
 * crunch - password list generator
 * curl -
 * dhex -
 * dnsmasq - DNS forwarder
 * dsniff - packet sniffer
 * ettercap-text-only - packet sniffer
 * gdb - gnu debugger
 * git - development tool for cloning repositories
 * hexedit -
 * hostapd - wireless utility for hosting an access point
 * hydra - Login bruteforce utility
 * iw - wireless utilities
 * john -
 * kismet -
 * libimage-exiftool-perl - perl tool for metadata files
 * locate - local file location database
 * macchanger - utility to change network MAC address
 * masscan - Port scanning utility
 * mariadb-client - mariadb database client
 * mariadb-server - mariadb database server
 * nbtscan - Utility for scanning Windows or Samba network shares
 * nmap - Port scanning utility
 * mycli - mysql client
 * openvpn - VPN software
 * php - Dynamic scripting language for web applications
 * proxychains - Utility to forward selected apps through a proxy or chain of proxies
 * python-dev - Python development libraries
 * python-pip - Python packages
 * ruby-full - install ruby
 * screen - screen terminal
 * smbclient - samba client
 * sslstrip - Utility to scan for HTTPS connections and obfuscate to non-SSL addresses
 * tcpdump - Packet sniffing utility
 * tmux - terminal with anabolics
 * tor - Anonymous onion routing
 * torsocks - utility socks for tor
 * tree - Directory listing utility
 * vim - text editor and IDE
 * wipe - Secure drive/data erasure utility
 * wireless-tools - Linux Wireless tools
 * whois - internet address lookup utility


### Python tools:
 * scapy
 * crackmapexec
 * wafw00f
 * sqlmap
 * shodan
 * webtech

### Miscellanous:
 * pixiewps - Offline WiFi protected setup brute-force utility
 * reaver - Wifi cracking utility
 * aircrack-ng - wifi cracking utility
 * mdk3 - aircrack utility?
 * cewl - Ruby utility to spider a website, collecting data for password cracking
 * Windows exploit suggester - self-explanatory, compares Windows patch level against vulnerabilities
 * commix - utility to exploit web vulnerabilities through query command injection
 * theharvester - utility to gather searchable open information about a host address
 * exploit database - command line utility to search exploit database
 * rock3tman - script to setup a VPN
 * mpc - utility to generate meterpreter payloads for the metasploit framework
 * Kali Linux Windows binaries - win32 binaries for use on windows systems
 * metasploit - exploitation framework
 * anemone
 * wpscan



# New tools?
I accept suggestions
