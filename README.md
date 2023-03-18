# OpenVPN With Stunnel (Tunneling between two servers)
## System requirment ##
Cpu 1core
<br>
Ram 2GB
<br>
Os Debian 11 / Ubuntu 20 (Recommended)

## Install Upstream Server ##
1 - Copy And Run command below
<br>
```
bash <(curl -Ls https://raw.githubusercontent.com/NixDeveeloper/openvpn-with-stunnel/master/upstream.sh)
```
** Attention : Use TCP protocol for openvpn . ovpn config file are multi-user.

## Install Bridge Server ##
1 - Copy And Run command below
<br>
```
apt update && apt install sudo -y && apt install curl -y && bash <(curl -Ls https://raw.githubusercontent.com/NixDeveeloper/openvpn-with-stunnel/master/bridge.sh)
```

## Initialize Config File ##
1 - Download OpenVpn config file (*.ovpn) from upstream server to your pc . path : /root
<br>
2 - Edit ovpn file
<br>
3 - replace tcp-client to tcp
<br>
4 - replace remote ip to your bridge ip
<br>
5 - save
<br>
6 - import config to your OpenVpn Client application and connect
<br>
7 - Enjoy

## Donate ##
```
USDT-TRC20 : THeed4iF4KdvXtcUXoQCNqZfafdgsjeLoc
<br>
BNB-BSC(BEP20) : 0x543e7d7Ac2365585D0774016c3636163C9CA3ae6
```
