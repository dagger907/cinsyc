#!/bin/bash
#All credits to Eyolv André Øverland
#NOTE: You have to change the username to what ever standard user you use. The way this is setup, you need one common user on all systems.
while read server; do
ssh youruser@$server 'bash -s' < checksys.sh > $PWD/syscollect/$server``_`date +%Y%m-%d`.txt
done < $PWD/servername.cfg
