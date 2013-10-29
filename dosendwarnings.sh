#!/bin/bash
#All credit to Eyolv André Øverland
#NOTE: You have to edit the email addresses to fit your setup
cat $PWD/tmp/mailreport.txt |  mail -r syscollect@yourdomain -s "Overview over updates for Linux - cinsyc" mailgroup1@yourdomain mailgroup2@yourdomain
