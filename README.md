This readme is for cinsyc(Cinsyc Is Not SYsCollect): System information gathering through SSH for Ubuntu and Debian based systems. It should be easy to customize for most platforms that has BASH installed.

cinsyc is a simple collection of BASH-scripts to collect system information. The goal was originally to collect useful information from servers using BASH only and making it as modular and minimalistic as possible, as well as easy to add more functionality.

cinsyc is a recursive acronym, and a play on words. In Norwegian the word "sinnsyk" means "insane" or "mentally ill" which reflects upon the dirtyness of the code.

cinsyc is released under GPL. Please fork it and/or improve it but give credits.

Some scripts have a "#NOTE". Read the "#NOTE".

Variable pathvar is used in the scripts, change value to the path to your sycollect-folder.

First time, run scripts in this order: dochecksys.sh, sendwarnings.sh, dosendwarnings.sh 


Then run scripts in this order: tarsyscollect.sh, dochecksys.sh, sendwarnings.sh, dosendwarnings.sh
Or just run autoall.sh

checksys.sh:
This is the script that contains the code that is run on servers listed in servername.cfg.
The script is based on this post: http://community.spiceworks.com/scripts/show/2127-quick-system-information-on-a-linux-host

dochecksys.sh:
This is the script that creates a SSH-connection and runs checksys.sh on servers listed in servername.cfg. Files are stored in $pathvar/syscollect.

servername.cfg:
This is a list over servers that dochecksys.sh runs through a while-loop.

tarsyscollect.sh:
This is the script that tars all files in $pathvar/syscollect and puts the tarball in $pathvar/tarsyscollect in the format YYYYMM-DD.tar.xz. All files in $pathvar/syscollect will be deleted after tar'ing is complete

sshbulkcopyid_done.sh:
This is the script that runs through servername.cfg to create SSH-based passwordless logons.

sendwarnings.sh
This is the script that generates output used in dosendwarnings.sh

dosendwarnings.sh:
This is the script you run to send information on email about updates and about servers that needs reboot.
