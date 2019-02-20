Feb 18 19:31:33 raspberry kernel: [    0.921391] mmc0: sdhost-bcm2835 loaded - DMA enabled (>1)
Feb 18 19:31:33 raspberry kernel: [    0.923967] of_cfs_init
Feb 18 19:31:33 raspberry kernel: [    0.925561] of_cfs_init: OK
Feb 18 19:31:33 raspberry kernel: [    0.927556] Waiting for root device /dev/mmcblk0p7...
Feb 18 19:31:33 raspberry kernel: [    0.943282] Indeed it is in host mode hprt0 = 00021501
Feb 18 19:31:33 raspberry kernel: [    1.011916] random: fast init done
Feb 18 19:31:33 raspberry kernel: [    1.048707] mmc0: host does not support reading read-only switch, assuming write-enable
Feb 18 19:31:33 raspberry kernel: [    1.054395] mmc0: new high speed SDHC card at address 59b4
Feb 18 19:31:33 raspberry kernel: [    1.056440] mmcblk0: mmc0:59b4 USD00 14.7 GiB
Feb 18 19:31:33 raspberry kernel: [    1.061434]  mmcblk0: p1 p2 < p5 p6 p7 >
Feb 18 19:31:33 raspberry kernel: [    1.080997] EXT4-fs (mmcblk0p7): mounted filesystem with ordered data mode. Opts: (null)
Feb 18 19:31:33 raspberry kernel: [    1.082376] mmc1: new high speed SDIO card at address 0001
Feb 18 19:31:33 raspberry kernel: [    1.085672] VFS: Mounted root (ext4 filesystem) readonly on device 179:7.
Feb 18 19:31:33 raspberry kernel: [    1.097523] devtmpfs: mounted
Feb 18 19:31:33 raspberry kernel: [    1.102356] Freeing unused kernel memory: 1024K
Feb 18 19:31:33 raspberry kernel: [    1.151406] usb 1-1: new high-speed USB device number 2 using dwc_otg
Feb 18 19:31:33 raspberry kernel: [    1.153095] Indeed it is in host mode hprt0 = 00001101
Feb 18 19:31:33 raspberry kernel: [    1.391665] usb 1-1: New USB device found, idVendor=0424, idProduct=9514
Feb 18 19:31:33 raspberry kernel: [    1.393355] usb 1-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
Feb 18 19:31:33 raspberry kernel: [    1.395697] hub 1-1:1.0: USB hub found
Feb 18 19:31:33 raspberry kernel: [    1.397449] hub 1-1:1.0: 5 ports detected
Feb 18 19:31:33 raspberry kernel: [    1.700973] NET: Registered protocol family 10
Feb 18 19:31:33 raspberry kernel: [    1.703850] Segment Routing with IPv6
Feb 18 19:31:33 raspberry kernel: [    1.711431] usb 1-1.1: new high-speed USB device number 3 using dwc_otg
Feb 18 19:31:33 raspberry kernel: [    1.733386] ip_tables: (C) 2000-2006 Netfilter Core Team
Feb 18 19:31:33 raspberry kernel: [    1.756806] random: systemd: uninitialized urandom read (16 bytes read)
Feb 18 19:31:33 raspberry kernel: [    1.823739] random: systemd: uninitialized urandom read (16 bytes read)
Feb 18 19:31:33 raspberry kernel: [    1.841831] usb 1-1.1: New USB device found, idVendor=0424, idProduct=ec00
Feb 18 19:31:33 raspberry kernel: [    1.843973] usb 1-1.1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
Feb 18 19:31:33 raspberry kernel: [    1.854229] smsc95xx v1.0.6
Feb 18 19:31:33 raspberry kernel: [    1.873335] random: systemd-sysv-ge: uninitialized urandom read (16 bytes read)
Feb 18 19:31:33 raspberry kernel: [    1.945008] smsc95xx 1-1.1:1.0 eth0: register 'smsc95xx' at usb-3f980000.usb-1.1, smsc95xx USB 2.0 Ethernet, b8:27:eb:00:29:27
Feb 18 19:31:33 raspberry kernel: [    2.574304] i2c /dev entries driver
Feb 18 19:31:33 raspberry kernel: [    3.022601] EXT4-fs (mmcblk0p7): re-mounted. Opts: (null)
Feb 18 19:31:33 raspberry kernel: [    3.726264] snd_bcm2835: module is from the staging directory, the quality is unknown, you have been warned.
Feb 18 19:31:33 raspberry kernel: [    3.729192] bcm2835_alsa bcm2835_alsa: card created with 8 channels
Feb 18 19:31:33 raspberry kernel: [    3.966127] brcmfmac: F1 signature read @0x18000000=0x1541a9a6
Feb 18 19:31:33 raspberry kernel: [    3.971996] brcmfmac: brcmf_fw_map_chip_to_name: using brcm/brcmfmac43430-sdio.bin for chip 0x00a9a6(43430) rev 0x000001
Feb 18 19:31:33 raspberry kernel: [    3.972277] usbcore: registered new interface driver brcmfmac
Feb 18 19:31:33 raspberry kernel: [    4.250434] brcmfmac: brcmf_c_preinit_dcmds: Firmware version = wl0: Oct 23 2017 03:55:53 version 7.45.98.38 (r674442 CY) FWID 01-e58d219f
Feb 18 19:31:33 raspberry kernel: [    4.251203] brcmfmac: brcmf_c_preinit_dcmds: CLM version = API: 12.2 Data: 7.11.15 Compiler: 1.24.2 ClmImport: 1.24.1 Creation: 2014-05-26 10:53:55 Inc Data: 9.10.39 Inc Compiler: 1.29.4 Inc ClmImport: 1.36.3 Creation: 2017-10-23 03:47:14 
Feb 18 19:31:33 raspberry kernel: [    4.741080] nf_conntrack version 0.5.0 (16384 buckets, 65536 max)
Feb 18 19:31:33 raspberry kernel: [    5.477598] tun: Universal TUN/TAP device driver, 1.6
Feb 18 19:31:33 raspberry kernel: [    5.725576] ip6_tables: (C) 2000-2006 Netfilter Core Team
Feb 18 19:31:33 raspberry kernel: [    5.823626] uart-pl011 3f201000.serial: no DMA platform data
Feb 18 19:31:33 raspberry kernel: [    6.454793] Adding 102396k swap on /var/swap.  Priority:-2 extents:1 across:102396k SSFS
Feb 18 19:31:33 raspberry kernel: [    6.594170] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
Feb 18 19:31:33 raspberry kernel: [    6.594198] brcmfmac: power management disabled
Feb 18 19:31:34 raspberry kernel: [    7.095865] smsc95xx 1-1.1:1.0 eth0: hardware isn't capable of remote wakeup
Feb 18 19:31:35 raspberry kernel: [    8.603425] smsc95xx 1-1.1:1.0 eth0: link up, 100Mbps, full-duplex, lpa 0xC1E1
Feb 18 19:31:38 raspberry kernel: [   11.298113] Bluetooth: Core ver 2.22
Feb 18 19:31:38 raspberry kernel: [   11.298198] NET: Registered protocol family 31
Feb 18 19:31:38 raspberry kernel: [   11.298205] Bluetooth: HCI device and connection manager initialized
Feb 18 19:31:38 raspberry kernel: [   11.298228] Bluetooth: HCI socket layer initialized
Feb 18 19:31:38 raspberry kernel: [   11.298241] Bluetooth: L2CAP socket layer initialized
Feb 18 19:31:38 raspberry kernel: [   11.298274] Bluetooth: SCO socket layer initialized
Feb 18 19:31:38 raspberry kernel: [   11.311093] Bluetooth: HCI UART driver ver 2.3
Feb 18 19:31:38 raspberry kernel: [   11.311106] Bluetooth: HCI UART protocol H4 registered
Feb 18 19:31:38 raspberry kernel: [   11.311113] Bluetooth: HCI UART protocol Three-wire (H5) registered
Feb 18 19:31:38 raspberry kernel: [   11.311340] Bluetooth: HCI UART protocol Broadcom registered
Feb 18 19:31:38 raspberry kernel: [   11.527884] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
Feb 18 19:31:38 raspberry kernel: [   11.527902] Bluetooth: BNEP filters: protocol multicast
Feb 18 19:31:38 raspberry kernel: [   11.527931] Bluetooth: BNEP socket layer initialized
Feb 18 19:32:46 raspberry kernel: [   79.530141] random: crng init done
Feb 18 19:32:46 raspberry kernel: [   79.530154] random: 7 urandom warning(s) missed due to ratelimiting
Feb 19 06:26:21 raspberry kernel: [39271.506032] systemd: 34 output lines suppressed due to ratelimpi@raspberrypi@raspberrypi@raspbepi@pi@raspberry:/vpi@raspberrypi@raspbepi@raspi@raspberrypi@raspi@pi@rppppppi@rpipipipi@raspi@pi@raspbpi@rapipi@rppi@pippi@pipipippippi@ppi@rappppipppi@raspberry:/var/log $ c

@raspberry:/var/log $  ry:/va

pi@raspberry:/var/log $ cd
pi@raspberry:~ $ last|head
pi       pts/0        24.252.238.201   Wed Feb 20 10:42   still logged in
pi       pts/0        24.252.238.201   Wed Feb 20 10:37 - 10:42  (00:04)
pi       pts/1        24.252.238.201   Tue Feb 19 11:05 - 11:06  (00:01)
pi       pts/0        24.252.238.201   Tue Feb 19 10:40 - 11:30  (00:49)
pi       pts/1        192.168.1.85     Mon Feb 18 19:40 - 20:48  (01:07)
pi       pts/0        192.168.1.85     Mon Feb 18 19:39 - 21:16  (01:37)
reboot   system boot  4.14.79-v7+      Wed Dec 31 16:00   still running
pi       pts/0        192.168.1.85     Mon Feb 18 19:31 - 19:31  (00:00)
pi       pts/0        192.168.1.85     Mon Feb 18 19:30 - 19:30  (00:00)
pi       pts/0        10.8.0.2         Mon Feb 18 08:05 - 08:23  (00:18)
pi@raspberry:~ $ cd /var/adm
-bash: cd: /var/adm: No such file or directory
pi@raspberry:~ $ git remote add origin git@github.com:TheDublord/Pistuffs.git
fatal: Not a git repository (or any of the parent directories): .git
pi@raspberry:~ $ ssh git@github.com:TheDublord/Pistuffs.git
ssh: Could not resolve hostname github.com:thedublord/pistuffs.git: Name or service not known
pi@raspberry:~ $ ssh git@github.com:TheDublord
ssh: Could not resolve hostname github.com:thedublord: Name or service not known
pi@raspberry:~ $ nano newpi.sh
pi@raspberry:~ $ ls
7{s+=}        diagtest.sh  newpi2.sh  notes.txt  piholebackup  pipy.py  tests.sh
countdown.sh  echo         newpi.sh   ovpns      pippt.sh      saves
pi@raspberry:~ $ nano pippt.sh













































  GNU nano 2.7.4                                  File: pippt.sh                                             

#!/bin/bash

# Script for a bit cleaner interface for the main script. 

DELAY=2 # Delay in seconds
gtemp=$(vcgencmd measure_temp | cut -c6-9)
ctemp=$(</sys/class/thermal/thermal_zone0/temp)
locip=$(ip route get 1 | awk '{print $NF;exit}')
pubip=$(curl -s ifconfig.me)
cpuC=$(($ctemp/1000))
warn=$(if [ "$cpuC" -ge 70 ]
then
        echo -e "\e[41mHot\e[m"
else
        echo -e "\e[96mCold\e[m"
fi
)
groun=$(printf '%.*f\n' 0 $gtemp)
cpuavg=$(top -bn 1 | awk 'NR>7{s+=$9} END {print s/4}')
timeconv=$(printf '%(%I:%M %p)T\n')
simptime=$(date +"%a %b %d")
gconvF=$(($groun*9/5+32))
cconvF=$(($cpuC*9/5+32))
usgroun=$(printf '%.*f\n' 1 $cpuavg)
cclock=$(vcgencmd measure_clock arm | cut -c15-23)
ccclock=$(echo $cclock | cut -c1-3)
ggclock=$(vcgencmd measure_clock core | cut -c14-23)
gggclock=$(echo $ggclock | cut -c1-3)

while true; do
  clear
  cat << _EOF_
Please Select:

1. Display Full System Information (With IPs)
2. Display Tempatures 
3. Display IPs
4. Display Storage Stats
5. Display Clock Speeds
0. Quit

_EOF_

 read -p "Enter selection [0-5] > "

  if [[ $REPLY =~ ^[0-5]$ ]]; then
    case $REPLY in
      1)
        echo -e "\e[1m\e[34m-------------------------------------------\e[0m"
        echo -e "\e[32m$simptime \e[34m/\e[0m\e[91m $timeconv\e[0m\e[0m \e[34m/\e[0m\e[32m $(whoami) @ $(hos$
        echo -e "\e[1m\e[34m-------------------------------------------\e[0m"
        echo
        echo -e "GPU => $groun˚C ($gconvF˚F) - $warn"
        echo
        echo -e "CPU => $cpuC˚C ($cconvF˚F) - $warn"
        echo 
        echo -e "CPU Usage => $usgroun%"
        echo 
        echo -e "\e[1m\e[34m-------------------------------------------\e[0m"
        echo -e "Local IP  => $locip"
        echo -e "Public IP => $pubip"
        echo -e "\e[1m\e[34m-------------------------------------------\e[0m"
        sleep 4
        continue
        ;;
      2)
        echo "Tempatures :"
        echo
        echo "CPU => $cpuC˚C"
        echo "GPU => $groun˚C"
        sleep $DELAY
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
        df -h 
        sleep 10
        continue
        ;;

      5)
        echo "ARM Clock: $ccclock MHz"
        echo "GPU Clock: $gggclock MHz"
        
        sleep 7
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
