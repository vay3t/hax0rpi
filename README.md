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

# How to add Kali repo in Raspbian?
```
sudo su
apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
apt update -m
```

### KALI LINUX IN RPI
```
wget https://build.nethunter.com/rpi3-nexmon/kali-0.1-rpi3-nexmon.img.xz
xz -d kali-0.1-rpi3-nexmon.img.xz
umount /dev/mmcblk0p1
umount /dev/mmcblk0p2
dd bs=4M if=kali-0.1-rpi3-nexmon.img of=/dev/mmcblk0
```

# New tools?
I accept suggestions
