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
curl https://raw.githubusercontent.com/vay3t/hax0rpi/master/hax0rpi > hax0rpi
chmod +x hax0rpi
./hax0rpi
rm hax0rpi
sudo reboot
```

# How to add Kali repo?
```
apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6
deb http://http.kali.org/kali kali-rolling main contrib non-free >> /etc/apt/sources.list
apt-get update -m
```

# New tools?
I accept suggestions
