# Installing PiVPN

As with PiHole, PiVPN is just as simple. A single command. `sudo curl -L https://install.pivpn.io | bash`. 

1) Run the command, let it do its thing, and it greets you, hit enter. PiVPN will now want to set a static IP, press enter, press No as it uses the current IP as a static ip, then yes to accept. 

2) hit enter again to proceed to the using that can manage the OVPN files (its how you'll connect to the vpn sever)

3) Hit enter again as `pi` is the only user. 

4) This asks what protocol you want to use. You can google the pros/cons of WireGuard and OpenVPN, but Ill be using OpenVPN for this tutorial. Press the down arrow, then space to select OpenVPN.

5) Choose no if you wish to use PiVPNs "defaults". These are generally good enough however if you wish to change them, choose yes. 

6) Use UDP.

7) Changing the port is reccomended but not required. I suggest something like 55555 or around it, the weirder the better (within 49152-65535 can be best). 
8) If asks if the port is correct, select yes. 
9) This is the DNS. I would reccomend using Google's or Cloudflares DNS as they are the fastest. Up/Down arrows to highlight, space to select. I will use Cloudflare for now (but if you have PiHole you may wish to change it later on which I will explain.)
10) No, you dont want a custom search domain (unless you have a reason). 
11) If you have a DDNS, use DNS Entry, otherwise use your public IP. 
12) Were in the 21st centry, so choose yes you want to use advanced features.
13) More bits the more secure but the default 256 bit elliptical is perfectly fine, however I will use 512. (They may have made a typo)
14) It generates a key, press enter once finished and it will ask if you want to use unattended upgrades, it's reccomended but not required.
15) PiVPN is now done installing! Read the on screen instructions to add ovpn profiles. Its reccomended to reboot after it is done. 

To access the VPN from outside you're network, to do this you'll need to port forward. Every router is different but you'll need to log into the router, find wherever it is (Its called NAT/Gaming on AT&T routers generally). 
WARNING: If you port forward it is a VERY good idea to use a non default password, on raspian set a non default password for both the pi and root users. Disabling root logins for ssh is a good idea as well. [Heres a basic tutorial to disable root logins](https://www.tecmint.com/disable-ssh-root-login-in-linux/). Skip to editing the file, I suggest nano over vi. If you use nano, Ctrl+x, Y, Enter to save. [CanYouSeeMe](https://canyouseeme.org/) can be used to check if the port is actually open once finished. 

To create ovpn files, `pivpn add`, enter a name, (its a good practice to create a new profile for every device), press enter when done, set the certificate value to 3650 ( 10 years), then enter a password, then reenter it. It will then generate a key and create the ovpn file. You're ovpn files can be found in `~/ovpns` or `/home/pi/ovpns` that then can be moved out with filezilla or scp. filezilla being the easiest. 
