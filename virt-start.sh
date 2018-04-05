#!/bin/sh

IFACE=$(route | grep default | awk '{print $8}' | grep -v Iface)

if [ "$(id -u)" != 0 ]; then
	echo -e "\n${RED}[!] Do use this script with sudo\n${NC}"
	exit 1
fi
systemctl start libvirtd
sleep 1
brctl addbr br0
ip addr add 172.20.0.1/16 dev br0
ip link set br0 up
sleep 3
dnsmasq --interface=br0 --bind-interfaces --dhcp-range=172.20.0.2,172.20.255.254 &
sleep 3
iptables -t nat -A POSTROUTING -o $IFACE -j MASQUERADE
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i br0 -o $IFACE -j ACCEPT
echo '1' > /proc/sys/net/ipv4/ip_forward
