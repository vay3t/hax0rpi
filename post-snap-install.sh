#!/bin/bash

source ~/.bashrc

which go &> /dev/null
if [ $? -ne 0 ]; then
	echo "please install go 'sudo snap install go --classic'"
	echo 'GOBIN=$HOME/go/bin' >> ~/.bashrc
	echo 'export PATH=$PATH:$GOBIN' >> ~/.bashrc
	exit
fi

function exit_trap() {
	local lc="$BASH_COMMAND" rc=$?
	echo "Command [$lc] exited with code [$rc]"
}

# install golang programs

go get -u github.com/asciimoo/wuzz
go get -u github.com/tomnomnom/fff
go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/waybackurls
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/unfurl
go get -u github.com/tomnomnom/gron
go get -u github.com/tomnomnom/qsreplace
go get -u github.com/tomnomnom/gf
go get -u github.com/mvdan/xurls
go get -u github.com/xxxserxxx/gotop/cmd/gotop
go get -u github.com/BBVA/kapow
go get -u github.com/davecheney/httpstat
go get -u github.com/OJ/gobuster
go get -u github.com/ffuf/ffuf
go get -u github.com/ffuf/pencode/cmd/pencode
go get -u github.com/ericchiang/pup
go get -u github.com/haccer/subjack
go get -u github.com/1ndianl33t/urlprobe
go get -u github.com/shenwei356/rush
go get -u github.com/jaeles-project/gospider
go get -u github.com/hakluke/hakrawler
GO111MODULE=on go get -u github.com/lc/gau
GO111MODULE=on go get -u github.com/OWASP/Amass/v3/...
GO111MODULE=on go get -u github.com/projectdiscovery/nuclei/v2/cmd/nuclei
GO111MODULE=on go get -u github.com/projectdiscovery/naabu/cmd/naabu
GO111MODULE=on go get -u github.com/projectdiscovery/shuffledns/cmd/shuffledns
GO111MODULE=auto go get -u github.com/projectdiscovery/httpx/cmd/httpx
GO111MODULE=auto go get -u github.com/projectdiscovery/subfinder/cmd/subfinder

echo "[+] Completed"
