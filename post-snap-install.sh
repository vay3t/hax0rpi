#!/bin/bash

if [ !$(which snap) ]; then
    echo please install snap 'sudo apt install snap'
    exit
fi

# snap
sudo snap install amass
sudo snap install go --classic


# install golang programs
go get -v -u github.com/iamstoxe/urlgrab
go get -v -u github.com/asciimoo/wuzz
go get -v -u github.com/tomnomnom/fff
go get -v -u github.com/tomnomnom/httprobe
go get -v -u github.com/tomnomnom/waybackurls
go get -v -u github.com/mvdan/xurls
go get -v -u github.com/tomnomnom/unfurl
go get -v -u github.com/xxxserxxx/gotop/cmd/gotop
go get -v -u github.com/BBVA/kapow
go get -v -u github.com/ffuf/pencode/cmd/pencode
go get -v -u github.com/tomnomnom/gron
go get -v -u github.com/davecheney/httpstat
go get -v -u github.com/OJ/gobuster
go get -v -u github.com/ffuf/ffuf
go get -v -u github.com/ericchiang/pup
go get -v -u github.com/bettercap/bettercap
