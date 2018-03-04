#Thankyou Olaf Dietsche from stackoverflow for " sed 's/<[^>]*>//g' " - https://stackoverflow.com/questions/19878056/sed-remove-tags-from-html-file#19878198
#Thankyou Alex for " sed 's/ //g' "

#Breif overview of the script,
#    Download the html page from vpnbook -- grab the first occurrence of 'Password:' -- remove HTML tags -- remove 'Password:' -- remove excess spaces
#    Note that grep is only using the first occurrence of 'Password:', and is therefor getting the password for the 'Free PPTP VPN Account', not the openvpn account.
wget -qO- --no-check-certificate https://www.vpnbook.com/ | grep -m1 'Password:' | sed 's/<[^>]*>//g' | sed 's/Password://' | sed 's/ //g'
