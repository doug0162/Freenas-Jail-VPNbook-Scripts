#Download latest VPNBOOK password
wget -qO- --no-check-certificate https://46.28.53.124/ | grep -m1 'Password:' | sed 's/<[^>]*>//g' | sed 's/Password://' | sed 's/ //g' > /usr/local/etc/openvpn/vpnbookpass.txt

OPENVPN_PASS=`cat /usr/local/etc/openvpn/pass.txt | grep -v vpnbook`
VPNBOOK_PASS=`cat /usr/local/etc/openvpn/vpnbookpass.txt`

echo $OPENVPN_PASS
echo $VPNBOOK_PASS
