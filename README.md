# How to obtain these scripts

To obtain a script, go to the script you want, select the raw button in the top-ish right, copy that link, type `wget (link)` (link) being the link which you can just paste in by right clicking in PuTTY. Example `wget https://raw.githubusercontent.com/TheDublord/Pi-Tools/master/help-meeeeee.sh` will grab the help script.

To execute the aformentioned help file, `sudo chmod +x help-meeeeee.sh` and then `sudo help-meeeeee.sh`. Yes, you do need sudo because unless you would like to switch to a root user, the pi cannot modify /etc or really anything outside of /home/pi without sudo. 

# Pi-Tools

A repo containing helpful scripts for your Raspberry Pi. No garuetees that theyll work for everyone, but if you have an issue, do let me know. The goal of these scripts is to be self contained and not rely on outside programs other than the ones provided by default with Raspian or if an outside program is needed it will probably be a seperate script unless it fits better into a mina script.

# Pi Infoz

Simply run this program. Shows basic stats of the Pi. Includes time, tempatures, IPs, and CPU Usage.                                       
*NOTE: If you are running Raspian Stretch, USE THE STRETCH VERSION, and use the Buster version for Buster, however the changes are minor so if you for some reason feel then need to do so, everything except the Local IP will work.*

# PiHole Backuper

Little script that copies and zips your /etc/pihole directory and saves it to your home folder. Great for if you disabled the Webmin interface to free up port 80/443 for other uses.

# Help-Meeeeee

Yet another dashing little script, but this time for troubleshooting. If you use this, please only use the options once or else some options will create duplicate additions to a file. This is still a work in progress, im always looking for things to add that can generally be solved by editing a config or other file. 
planned features: autofill for a static ip/dns, autofill for thing that needs specific pi, and replacing text instead of appending in laggy mouse. ETA: good luck

# Wifi-Magicer

Specifically for making a properly formatted wpa_supplicant script. I plan on making a windows version so you can prepare it on windows and drop it on the SD card. The .cmd file is for windows, the .sh file is for linux. 
