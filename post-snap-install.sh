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

trap exit_trap err

# install golang programs

go get -u github.com/asciimoo/wuzz &>/dev/null
go get -u github.com/tomnomnom/fff &> /dev/null
go get -u github.com/tomnomnom/waybackurls &>/dev/null
go get -u github.com/tomnomnom/unfurl &>/dev/null
go get -u github.com/tomnomnom/gron &>/dev/null
go get -u github.com/tomnomnom/qsreplace &>/dev/null
go get -u github.com/tomnomnom/gf &>/dev/null
go get -u github.com/mvdan/xurls &>/dev/null
go get -u github.com/BBVA/kapow &>/dev/null
go get -u github.com/davecheney/httpstat &>/dev/null
go get -u github.com/OJ/gobuster &>/dev/null
go get -u github.com/michenriksen/aquatone &>/dev/null
go get -u github.com/ffuf/ffuf &>/dev/null
go get -u github.com/ffuf/pencode/cmd/pencode &>/dev/null
go get -u github.com/ericchiang/pup &>/dev/null
go get -u github.com/haccer/subjack &>/dev/null
go get -u github.com/1ndianl33t/urlprobe &>/dev/null
go get -u github.com/jaeles-project/gospider &>/dev/null
GO111MODULE=on go get -u github.com/lc/gau &>/dev/null
GO111MODULE=on go get -u github.com/OWASP/Amass/v3/... &>/dev/null
GO111MODULE=on go get -u github.com/projectdiscovery/nuclei/v2/cmd/nuclei &>/dev/null
GO111MODULE=on go get -u github.com/projectdiscovery/naabu/cmd/naabu &>/dev/null
GO111MODULE=on go get -u github.com/projectdiscovery/dnsprobe &>/dev/null
GO111MODULE=auto go get -u github.com/projectdiscovery/httpx/cmd/httpx &>/dev/null
GO111MODULE=auto go get -u github.com/projectdiscovery/subfinder/v2/cmd/subfinder &>/dev/null

echo "[+] Completed"
