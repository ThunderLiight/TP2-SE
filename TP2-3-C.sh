#!/usr/bin/env bash

ip=`hostname -i`

dhcp=`/sbin/ifconfig | grep -E "[0-9]{3}\.([0-9]{2}\.){2}[0-9]{2}"`
subdhcp=`echo $dhcp | cut -c6-18`

masque=`/sbin/ifconfig | grep -E "([0-9]{3}\.){3}[0-9]"`
submasque=`echo $masque | cut -c27-39`

mac=`/sbin/ifconfig | grep -E "([0-9a-f]{2}:){5}[0-9a-f]{2}"`
submac=`echo $mac | cut -c7-23`

dns=`grep -E "[0-9]{3}\.([0-9]{2}\.){2}[0-9]{2}" /etc/resolv.conf`
subdns1=`echo $dns | cut -c12-23`
subdns2=`echo $dns | cut -c36-47`

pass=`ip route`
subpass=`echo $pass | cut -c13-23`

cat << EOF
Adresse IP: $ip
Statique ou DHCP: $subdhcp
Masque de sous-réseau: $submasque
Adresse MAC: $submac
Serveur DNS: $subdns1 / $subdns2
Adresse de la passerelle par défaut: $subpass
EOF