#!/bin/bash
# -----------------------------------------------
# Version: 0.0.1
# Discord: @Mr. Dubz#1337
# GitHub: TheDublord
# https://github.com/TheDublord/Pi-Tools
# -----------------------------------------------
DELAY=2 # Delay in seconds
locip=$(ip route get 1 | awk '{print $NF;exit}')
pubip=$(curl -s ifconfig.me)
statrouts=$(ip route | grep default | awk '{print $3}')

while true; do
  clear
  cat << _EOF_
Please Select:

1. Create SSH File
2. Connect to WiFi 
3. Display IP(s)
4. Change Display Mode
5. What Pi do I have?
6. Set Static IP
0. Quit

WARNING: PLEASE ONLY USE EACH OF THESE OPTIONS ONCE, MULTIPLE USES WILL CAUSE DUPLICATE OPTIONS WHICH CAN RESULT IN IT NOT WORKING!
_EOF_

  read -p "Enter selection [0-6] > "

  if [[ $REPLY =~ ^[0-6]$ ]]; then
    case $REPLY in
      1)
        sudo touch /boot/ssh
        echo "SSH File Created!"
	echo "Use $locip to connect!"
	sleep 7
	continue
        ;;
      2)
        if [[ -f /boot/wpa_supplicant.conf ]]
	then
	echo "This file exists! Please delete the existing file with: sudo rm -rf /boot/wpa_supplicant.conf"
	else
	sudo touch /boot/wpa_supplicant.conf && echo "Created wpa_supplicant.conf file!"
	sleep 1
	echo -n "Name of your WiFi Network?"
	read user
	echo -n "Whats your password? (Dont trust me? https://www.raspberrypi.org/documentation/configuration/wireless/headless.md And figure it out yourself!)"
	read passwd
	echo -n "What is your country code? (Ex: If you live in the US, US is the country code. fr=france, de=germany, gb=Great Britain, se=sweden) - "
	read whereulive

	sudo tee -a /boot/wpa_supplicant.conf > /dev/null <<EOT

	ctrl_interface=/var/run/wpa_supplicant GROUP=netdev
	update_config=1
	country=$whereulive

	network={
 	scan_ssid=1
 	ssid="$user"
 	psk="$passwd"
 	proto=RSN
 	key_mgmt=WPA-PSK
 	pairwise=CCMP
 	auth_alg=OPEN
        }	
       	EOT
	echo "File made, please reboot for changes to take affect!"
	fi
	sleep 10
	continue
        ;;
      3)
        echo "IPs :"
        echo 
        echo "Public IP = $pubip"
        echo "Local IP  = $locip"
        sleep $DELAY
        continue
        ;;
      4)
        echo -n "What display mode would you like to set? Refer to https://www.raspberrypi.org/documentation/configuration/config-txt/video.md for the mode you want - "
	read mode

	sudo tee -a config.txt > /dev/null <<EOT
	hdmi_mode=$mode
	hdmi_force_hotplug=1
	EOT
        continue
        ;;

      5)
	cat /proc/device-tree/model
	sleep 7
	continue
	;;
      6)
	echo -n "Select Interface (eth/wifi)"
	read interface
	if [ "$interface" = eth ] ;then
        sudo tee -a /etc/dhcpcd > /dev/null <<EOT
	interface eth0
	EOT
	else
        sudo tee -a /etc/dhcpcd > /dev/null <<EOT
	interface wlan0
	EOT
	fi
	sudo tee -a /etc/dhcpcd > /dev/null <<EOT
	static_routers=$statrouts
	static domain_name_servers=1.1.1.1
	continue
	;;	
      0)
        break
        ;;
    esac
  else
    echo "Invalid entry."
    sleep $DELAY
  fi
done
echo "Program terminated."
sleep 1.5
clear