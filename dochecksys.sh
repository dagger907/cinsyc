#!/bin/bash
#All credits to Eyolv André Øverland
#NOTE: You have to change the username to what ever standard user you use. The way this is setup, you need one common user on all systems.
pathvar=your path to syscollect-folder
while read server; do
ssh user@$server 'bash -s' < $pathvar/checksys.sh > $pathvar/syscollect/$server``_`date +%Y%m-%d`.txt
done < $pathvar/servername.cfg
