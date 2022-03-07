#!/bin/bash
# -----------------------------------------------
# Version: 0.1
# Discord: Mr. Dubz#1337
# GitHub: TheDublord
# https://github.com/TheDublord/Pi-Tools
# -----------------------------------------------
healthy=$(docker ps | grep -o 'healthy' | wc -l)
unhealthy=$(docker ps | grep -o 'unhealthy' | wc -l)
running=$(docker container ls -a | grep -o 'Up' | wc -l)
created=$(docker container ls -a | grep -o 'Created' | wc -l)
stopped=$(docker container ls -a | grep -o 'Exited' | wc -l)
total=$(($running + $created + $stopped))

# Health: Healthy / Unhealthy
# Running: Running / Created / Stopped
echo -e "#########################"
echo -e "Docker container stats:"
echo -e "Health: \e[32m$healthy \e[97m/ \e[31m$unhealthy\e[0m"
echo -e "Running: \e[32m$running \e[97m/ \e[96m$created \e[97m/ \e[31m$stopped\e[0m"
echo -e "#########################"
