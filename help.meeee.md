# Overview
| This script has not been fully tested, use at your own risk. |
| This script also requires sudo. Dont trust it? sounds like a you problem |
# Option 1: Create SSH File
Simple enough here, this option creates a file called 'ssh' that will enable the ssh server on the pi upon restart. 

# Option 2: Connect to wifi
This creates a wpa_supplciant file for you, this requires your SSID, password, and a country code. Dont trust it? Again, sounds like a you problem.
(Option 4 warning, this will ask you to delete the file if it exists already though)

# Option 3: Display IP(s)
This purely displays both your pubilc and local IPs, nothing fancy. 

# Option 4: Change Display Mode
https://www.raspberrypi.org/documentation/configuration/config-txt/video.md
Make sure you know what display mode your looking for, **Warning: This appends to the file, meaning it just adds new lines so only use this option once,
if you need to change this, edit the file!** It also enables hdmi hotplug, something that does more harm than good being disabled by default. 

# Option 5: What Pi Do I Have?
Another **very** simple script that prints your device model. Ya know, cuz people cant use their eyes and look on the pi itself.

# Option 6: Set Static IP
Self explanitory. Does it via dhcpcd, same warning from option 4 applies here. 

# Option 7: "No wireless interfaces found."
Same warning from option 4. This uses the interfaces file, adds 'auto wlan0' to the file to create said interface. 
