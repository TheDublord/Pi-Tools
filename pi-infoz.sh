#!/bin/bash
# Script: Infoz
# Purpose: A simple Bash Script to show temperature and a few other things about the pi.
# -------------------------------------------------------

# Heres how the GPU temp is gotten.
gtemp=$(vcgencmd measure_temp | cut -c6-9)
# Heres how the CPU temp is gotten.  CPU and GPU temp are almost the same all the time tho.
ctemp=$(</sys/class/thermal/thermal_zone0/temp)
# divides by 1000 for the blind, cuz for whatever reason the Pi reads in gigacelcius or whatever.
cpuC=$(($ctemp/1000))
# change the number in the top  (default =60) to the temp in you know, the correct way of measuring temp.
warn=$(if [ "$cpuC" -ge 50 ]
then
        echo -e "\e[41mHot\e[m"
else
        echo -e "\e[96mCold\e[m"
fi
)
# the f/n thingy is for floating point i.e. rounding.
groun=$(printf '%.*f\n' 0 $gtemp)
# Pers prints average CPU usage, honesly probably isnt accurate but its better than nothing.
cpuavg=$(top -bn 1 | awk 'NR>7{s+=$9} END {print s/4}')
# Local IP
locip=$(ip route get 1 | awk '{print $NF;exit}')
# The date the way I wanted it.
timeconv=$(printf '%(%I:%M %p)T\n')
# The time the way I wanted it.
simptime=$(date +"%a %b %d")
# Convert GPU temp to freedom units.
gconvF=$(($groun*9/5+32))
# Convert CPU temp to freedom units.
cconvF=$(($cpuC*9/5+32))
# Public IP, should work.
pubip=$(curl -s ifconfig.me)
# Rounds the CPU usage value to a 1.1 type number vs 1.111
usgroun=$(printf '%.*f\n' 1 $cpuavg)
usgr=$(printf '%.*f\n' 0 $usgroun)

let upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
let secs=$((${upSeconds}%60))
let mins=$((${upSeconds}/60%60))
let hours=$((${upSeconds}/3600%24))
let days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh%02dm%02ds" "$days" "$hours" "$mins" "$secs"`
one=$(cat /proc/loadavg | awk {'print $1'})
five=$(cat /proc/loadavg | awk {'print $2'})
fifteen=$(cat /proc/loadavg | awk {'print $3'})

memavil=$(cat /proc/meminfo | grep MemAvailable | awk {'print $2'})
memavilmb=$(($memavil/1000))
memtot=$(cat /proc/meminfo | grep MemTotal | awk {'print $2'})
memtotmb=$(($memtot/1000))
memused=`expr $memtotmb - $memavilmb`

swptot=$(cat /proc/meminfo | grep SwapTotal | awk {'print $2'})
swptotmb=$(($swptot/1000))
swpfree=$(cat /proc/meminfo | grep SwapFree | awk {'print $2'})
swpfreemb=$(($swpfree/1000))
usedswp=`expr $swptot - $swpfree`
usedswpmb=`expr $swptotmb - $swpfreemb`
swpif=$(if [ $usedswpmb -le 2 ]
then
echo -e "$usedswp\e[0mKB"
else
echo -e "$usedswpmb\e[0mMB"
fi
)

echo -e "\e[1m\e[34m--------------------------------------------------------\e[0m"
echo -e "        \e[32m$simptime \e[34m/\e[0m\e[91m $timeconv\e[0m\e[0m \e[34m/\e[0m\e[32m $(whoami) @ $(hostname)\e[0m"
echo -e "\e[1m\e[34m--------------------------------------------------------\e[0m"
echo
echo -e "Temperatures......: CPU: $cpuC°C ($cconvF°F) GPU: $groun°C ($gconvF°F)"
echo -e "Uptime............: ${UPTIME}             "
echo -e "Running Proceses..: $(ps ax | wc -l | tr -d " ")"
echo -e "Memory............: $memused\e[0mMB (Free) / $memtotmb\e[0mMB (Total)"
echo -e "Swap..............: $swpif\e[0m (Used) / $swptotmb\e[0mMB (Total)"
echo "Load Averages.....: ${one}, ${five}, ${fifteen} (1, 5, 15 min)"
echo
echo -e "\e[1m\e[34m--------------------------------------------------------\e[0m"
echo -e "Local IP  => $locip"
echo -e "Public IP => $pubip"
echo -e "\e[1m\e[34m--------------------------------------------------------\e[0m"
