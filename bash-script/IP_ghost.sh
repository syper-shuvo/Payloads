#!/bin/bash
RED="\e[31m"
apt get install figlet lolcat
# info get from  http://ip-api.com/json/#ip-address
figlet -f slant -c "Ip Ghost " | lolcat && figlet -f digital -c "shuvo kumar saha" | lolcat
echo " "

read -p "        Enter Target Ip : " do


ip=$(curl http://ip-api.com/json/$do -s )
ok=$(echo $ip | jq '.status' -r);
#checking current ip address

if [ $ok == "success" ] 
then
address=$(echo $ip | jq '.query' -r )
country=$(echo $ip | jq '.country' -r)
city=$(echo $ip | jq '.city' -r)
zip=$(echo $ip | jq '.zip' -r)
isp=$(echo $ip | jq '.isp' -r )
asn=$(echo $ip | jq '.as' -r )
lat=$(echo $ip | jq '.lat' -r )
lon=$(echo $ip | jq '.lon' -r)
re=$(echo $ip | jq '.regionName' -r )

clear
figlet -f slant -c "Ip Ghost " | lolcat && figlet -f digital -c "shuvo kumar saha" | lolcat
echo " "

#printing all information with plantext format 
echo "           IP Address : $do"
echo "           City : $city"
echo "           Region : $re"
echo "           Country : $country";
echo "           Zip Code : $zip"
echo "           Latitude : $lat"
echo "           Longitude : $lon"
echo "           ISP Provider : $isp"
echo "           ASN Info : $asn"

else 
echo -e "        [+]${RED} Please Enter Right Ip :) "
fi


#code by shuvo kumar saha 







