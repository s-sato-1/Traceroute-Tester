#!/bin/bash

############################## // Materials
Fr=`ifconfig |grep '192' |grep 'inet'`

IP_Address_Key=`echo $Fr|awk -F" " '{print $1}'`
IP_Address_Val=`echo $Fr|awk -F" " '{print $2}'`
NetMask_Key=`echo $Fr|awk -F" " '{print $3}'`
NetMask_Val=`echo $Fr|awk -F" " '{print $4}'`
Bro_Key=`echo $Fr|awk -F" " '{print $5}'`
Bro_Val=`echo $Fr|awk -F" " '{print $6}'`
############################## // Materials

############################## // IP Address
Target_IP='192.168.11.1'
From_IP=$IP_Address_Val
############################## // IP Address

############################## // Conditions
echo 'Conditions: '
echo '    ' $IP_Address_Key : $IP_Address_Val '(SRC)'
echo '    ' 'destination' : $Target_IP '(DST)'
echo '    ' $NetMask_Key : $NetMask_Val
echo '    ' $Bro_Key : $Bro_Val
############################## // Conditions


echo 'debug -------->'


#res=$(traceroute -p 80 $Target_IP)
#echo $res


echo 'debug -------->'

############################## // Data
echo 'Data: '
echo '    ' 'xxxxxxxxx'
############################## // Data

exit 0

