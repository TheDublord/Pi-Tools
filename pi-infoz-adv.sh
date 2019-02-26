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
ccclock=$(echo $cclock | cut -c1-4)
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
