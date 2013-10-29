This readme is for cinsyc(Cinsyc Is Not SYsCollect): System information gathering through SSH for Ubuntu and Debian based systems.

cinsyc is a simple collection of BASH-scripts to collect system information. The goal was originally to collect useful information from servers using BASH only and making it as modular and minimalistic as possible, as well as easy to add more functionality.

cinsyc is a recursive acronym, and a play on words. In Norwegian the word "sinnsyk" means "insane" or "mentally ill" which reflects upon the dirtyness of the code.

cinsyc is released under GPL. Please fork it and/or improve it but give credits.

Some scripts have a "#NOTE". Read the "#NOTE".

First time, run scripts in this order: dochecksys.sh, sendwarnings.sh, dosendwarnings.sh
Run scripts in this order: tarsyscollect.sh, dochecksys.sh, sendwarnings.sh, dosendwarnings.sh


checksys.sh:
This is the script that contains the code that is run on servers listed in servername.cfg.
The script is based on this post: http://community.spiceworks.com/scripts/show/2127-quick-system-information-on-a-linux-host

dochecksys.sh:
This is the script that creates a SSH-connection and runs checksys.sh on servers listed in servername.cfg. Files are stored in $PWD/syscollect.

servername.cfg:
This is a list over servers that dochecksys.sh runs through a while-loop.

tarsyscollect.sh:
This is the script that tars all files in $PWD/syscollect and puts the tarball in $PWD/tarsyscollect in the format YYYYMM-DD.tar.xz. All files in $PWD/syscollect will be deleted after tar'ing is complete

sshbulkcopyid_done.sh:
This is the script that runs through servername.cfg to create SSH-based passwordless logons.

sendwarnings.sh
This is the script that generates output used in dosendwarnings.sh

dosendwarnings.sh:
This is the script you run to send information on email about updates and about servers that needs reboot.
