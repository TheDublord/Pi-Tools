### Purpose: Storage for my docker compose files, these arent strictly for the RPI, but they should all support arm and configuration should be the same

Be sure you have docker, and docker compose isntalled. Docker supplies and convienece scirpt and compose can be installed via pip3 if you wish (probaly easiest way).
I also suggest the use of portainer, it makes managing docker containers easy, and updating pihole easier. 

**FIles contain notes on configuration, READ THEM. IF YOU WISH TO USE A SINGLE ONE, RENAME TO "docker-compose.yml"**

### monitor.sh
Extremely rudimentry script for getting a brief stat of your containers, running/down/healthy counts, etc. You *should* use "docker ps"
