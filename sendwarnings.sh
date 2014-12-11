#!/bin/bash
#All credits to Eyolv André Øverland
DATO="`date +%Y%m-%d`"
pathvar=your path to syscollect-folder
mailreportfile=$pathvar/tmp/mailreport.txt
echo > $mailreportfile

while true
do
  read server || break

  serverlog="`echo $server`_$DATO.txt"

  hostname="`cat $pathvar/syscollect/$serverlog | grep Hostname | cut -f2- -d":" | sed -e s///g`"
  securityupdates="`cat $pathvar/syscollect/$serverlog | grep 'Updates/upgrades' | cut -f2- -d":"`"
  needsreboot="`cat $pathvar/syscollect/$serverlog |grep reboot`"

  #if [ "$securityupdates" = "" ];
  #then
    #securityupdates='Could not find update information'
  #fi

  if [ -s $pathvar/syscollect/$serverlog ];
  then
    echo "$hostname, $securityupdates $needsreboot" >> $mailreportfile
  else
    echo "$server is blank" >> $mailreportfile
  fi

done < $pathvar/servername.cfg


cat $mailreportfile
