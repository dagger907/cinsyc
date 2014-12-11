#!/bin/bash
#All credit to Eyolv André Øverland
#NOTE: You have to edit the email addresses to fit your setup
pathvar=/home/localadmin/syscollect
cat $pathvar/tmp/mailreport.txt |  mail -r syscollect@yourdomain -s "Overview of updates for Linux - Syscollect" youremail@yourdomain.com
