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
curl -s https://raw.githubusercontent.com/vay3t/hax0rpi/master/hax0rpi > hax0rpi
chmod +x hax0rpi
./hax0rpi
rm hax0rpi
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

# How to add Kali repo in Raspbian? (not recomended)
```
sudo su
apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
apt update -m
```

### KALI LINUX IN RPI
```
wget https://images.offensive-security.com/arm-images/kali-linux-2018.1a-rpi3-nexmon.img.xz
xz -d kali-0.6-rpi3.img.xz
umount /dev/mmcblk0p1
umount /dev/mmcblk0p2
dd bs=4M if=kali-0.6-rpi3.img of=/dev/mmcblk0
```

# Tools List

### Installed via apt-get:
 * apache2 - http daemon
 * arp-scan - scans lan
 * crunch - password list generator
 * dnsmasq - DNS forwarder
 * dsniff - packet sniffer
 * ettercap - packet sniffer
 * fail2ban - rule based security for services
 * git - development tool for cloning repositories
 * goaccess - visual web analyzer
 * hostapd - wireless utility for hosting an access point
 * hping3 - ICMP network utility
 * hydra - Login bruteforce utility
 * iw - wireless utilities
 * libimage-exiftool-perl - perl tool for generating images
 * locate - local file location database
 * macchanger - utility to change network MAC address
 * masscan - Port scanning utility
 * mysql-client - SQL client
 * mysql-server - SQL server
 * nbtscan - Utility for scanning Windows or Samba network shares
 * nmap - Port scanning utility
 * openvpn - VPN software
 * pdfcrack - Cracks PDF passwords
 * php - Dynamic scripting language for web applications
 * pi-bluetooth - Bluetooth support for Raspberry Pi
 * proxychains - Utility to forward selected apps through a proxy or chain of proxies
 * python-dev - Python development libraries
 * python-pip - Python packages
 * rarcrack - Password cracker for RAR files
 * sslstrip - Utility to scan for HTTPS connections and obfuscate to non-SSL addresses
 * tcpdump - Packet sniffing utility
 * tor - Anonymous onion routing
 * tor-arm - Tor package for ARM processors
 * tree - Directory listing utility
 * vlc - Video player
 * wipe - Secure drive/data erasure utility
 * wireless-tools - Linux Wireless tools
 * whois - internet address lookup utility
 * wvdial - PPP/modem utility

### Python tools:
 * hasid
 * scapy
 * python-nmap
 * crackmapexec
 * wafw00f
 * impacket
 * glances
 * sqlmap

### Miscellanous:
 * fing - network scanner
 * empire - powershell empire, post exploitation framework
 * emPyre - python post-exploitation OS X/Linux agent
 * pupy - Cross platform RAT/post-exploitation tool
 * weevely - Web shell RAT, obfuscated PHP * Similar to utility used in 2000.
 * dnsenum - perl script, enumerates DNS information
 * set - Social-Engineer Toolkit
 * net-creds - sniff's passwords and hashes from an interface or pcap file
 * pixiewps - Offline WiFi protected setup brute-force utility
 * reaver - Wifi cracking utility
 * aircrack-ng - wifi cracking utility
 * airodump-ng - wifi cracking utility
 * mdk3 - aircrack utility?
 * dirb - web content scanner
 * p0f - passive operating system identification utility
 * cewl - Ruby utility to spider a website, collecting data for password cracking
 * lazagne - utility to recover passwords from a local computer
 * findmyhash - Online hash lookup utility to find instances of hashes online
 * Windows exploit suggester - self-explanatory, compares Windows patch level against vulnerabilities
 * commix - utility to exploit web vulnerabilities through query command injection
 * theharvester - utility to gather searchable open information about a host address
 * linux exploit suggester - Same as the windows utility but for Linux
 * nishang - Powershell exploitation framework
 * exploit database - command line utility to search exploit database
 * rock3tman - script to setup a VPN
 * mpc - utility to generate meterpreter payloads for the metasploit framework
 * Kali Linux Windows binaries - win32 binaries for use on windows systems
 * metasploit - exploitation framework
 * beef - browser exploitation framework



# New tools?
I accept suggestions
