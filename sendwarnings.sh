#!/bin/bash
#All credits to Eyolv André Øverland and Michael Husbyn
DATO="`date +%Y%m-%d`"

mailreportfile=$PWD/tmp/mailreport.txt

echo > $mailreportfile

while true
do
  read server || break

  serverlog="`echo $server`_$DATO.txt"
  hostname="`cat syscollect/$serverlog | grep Hostname | cut -f2- -d":" | sed -e s///g`"
  securityupdates="`cat syscollect/$serverlog | grep 'Updates/upgrades' | cut -f2- -d":"`"
  needsreboot="`cat syscollect/$serverlog |grep reboot`"

if [ -s syscollect/$serverlog ];
then
    echo "$hostname, $securityupdates $needsreboot" >> $mailreportfile
	else
    echo "$server is blank" >> $mailreportfile
fi

done < $PWD/servername.cfg

cat $mailreportfile
