# openvpn-with-stunnel
System requirment
Debian 11 Or Ubuntu 20 (Ubuntu recommended)

## Install Upstream Server ##
1 - Copy And Run command below
<br>
```
bash <(curl -Ls https://raw.githubusercontent.com/NixDeveeloper/openvpn-with-stunnel/master/upstream.sh)
```
** Attention : Use TCP protocol for openvpn . each config file can use for one device so if you want create other user run command below.
```
bash openvpn-install.sh
```

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
USDT-TRC20 : TKtUR5kcHRWje8GUnAVZLeb5MA2pRSWJi7
```
