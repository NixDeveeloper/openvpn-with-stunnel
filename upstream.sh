apt update
apt install sudo -y
apt install wget -y
openvpn_port="1194"
tunnel_port="443"
read -rp "OpenVpn Port (Default : $openvpn_port) : " -e -i "$openvpn_port" openvpn_port
read -rp "STunnel Port (Default : $tunnel_port) : " -e -i "$tunnel_port" tunnel_port
cat >> /etc/sysctl.d/50-bbr.conf <<EOF
net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr
EOF
sysctl -p /etc/sysctl.d/50-bbr.conf
apt install stunnel4 -y
cd /etc/stunnel/
wget https://raw.githubusercontent.com/NixDeveeloper/openvpn-with-stunnel/master/stunnel-upstream.conf
mv stunnel-upstream.conf stunnel.conf
sed -i 's/openvpn_port/'$openvpn_port'/' stunnel.conf
sed -i 's/tunnel_port/'$tunnel_port'/' stunnel.conf
openssl genrsa -out key.pem 2048
openssl req -new -x509 -key key.pem -out cert.pem -days 3650
/etc/init.d/stunnel4 restart
wget https://raw.githubusercontent.com/NixDeveeloper/openvpn-with-stunnel/master/openvpn-install.sh
bash openvpn-install.sh
systemctl restart openvpn-server@server
echo "###################################"
echo "Everything is ok . copy ovpn file from /root to your pc"
echo "Config your bridge server"
echo "###################################"