### Purpose: Storage for my docker compose files, these arent strictly for the RPI, but they should all support arm and configuration should be the same

Be sure you have docker, and docker compose isntalled. Docker supplies and convienece scirpt and compose can be installed via pip3 if you wish (probaly easiest way).
I also suggest the use of portainer, it makes managing docker containers easy, and updating pihole easier. I'll add docker run commands to them eventually, though theyll be untested they should work. Credit to [Composterize](https://www.composerize.com/) and [8gwifi](https://8gwifi.org/dc2.jsp) for conversions.

**FIles contain notes on configuration, READ THEM. IF YOU WISH TO USE A SINGLE ONE, RENAME TO "docker-compose.yml"**

### monitor.sh
Extremely rudimentry script for getting a brief stat of your containers, running/down/healthy counts, etc. You *should* use "docker ps"
