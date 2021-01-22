@ECHO OFF
set /p user="What is the name of your wifi network? - "
set /p passwd="Whats your password? (Dont trust me? https://www.raspberrypi.org/documentation/configuration/wireless/headless.md And figure it out yourself!) - "
set /p whereulive="hat is your country code? (Ex: If you live in the US, US is the country code. fr=france, de=germany, gb=Great Britain, se=sweden) - "

(
echo ctrl_interface=/var/run/wpa_supplicant GROUP=netdev
echo update_config=1
echo country=%whereulive%
echo network={
echo scan_ssid=1
echo ssid="%user%"
echo psk="%passwd%"
echo proto=RSN
echo key_mgmt=WPA-PSK
echo pairwise=CCMP
echo auth_alg=OPEN
echo }
)>"wpa_supplicant.conf"
