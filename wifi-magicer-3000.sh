#!/bin/bash

touch wpa_supplicant.conf && echo "Created wpa_supplicant.conf file!"
sleep 1
echo -n "Name of your WiFi Network? - "
read user
echo -n "Whats your password? (Dont trust me? https://www.raspberrypi.org/documentation/configuration/wireless/headless.md And figure it out yourself!) - "
read passwd
echo -n "What is your country code? (Ex: If you live in the US, US is the country code. fr=france, de=germany, gb=Great Britain, se=sweden) - "
read whereulive
tee -a wpa_supplicant.conf > /dev/null << EOT
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
echo "File made,'sudo mv wpa_supplicant.conf /boot/wpa_supplicant.conf' to move the file corerctly"
