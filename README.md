# hax0rpi
```
pi@raspberrypi:~/hax0rpi $ ./hax0rpi 
               _                 ___             _              
              | |__   __ ___  __/ _ \ _ __ _ __ (_)             
              | '_ \ / _' \ \/ / | | | '__| '_ \| |             
              | | | | (_| |>  <| |_| | |  | |_) | |             
              |_| |_|\__,_/_/\_\\___/|_|  | .__/|_|             
                                          |_|                   

                  === hax0rpi Release 0.3 ===                   
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
curl https://raw.githubusercontent.com/vay3t/hax0rpi/master/hax0rpi > hax0rpi
chmod +x hax0rpi
./hax0rpi
rm hax0rpi
sudo reboot
```

# How to install Raspbian from Linux
```
wget http://downloads.raspberrypi.org/raspbian/images/raspbian-2016-09-28/2016-09-23-raspbian-jessie.zip
unzip 2016-09-23-raspbian-jessie.zip
dd if=2016-09-23-raspbian-jessie.img of=/dev/sdd bs=4M
```

### Lite version
```
http://downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2016-09-28/2016-09-23-raspbian-jessie-lite.zip
unzip 2016-09-23-raspbian-jessie-lite.zip
dd if=2016-09-23-raspbian-jessie-lite.img of=/dev/sdd bs=4
```
more information: [https://www.raspberrypi.org/documentation/installation/installing-images/linux.md](https://www.raspberrypi.org/documentation/installation/installing-images/linux.md)

# How to add Kali repo in Raspbian?
```
sudo su
apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
apt update -m
```

# New tools?
I accept suggestions
