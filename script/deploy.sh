#!/bin/sh
ssh root@45.32.100.111 <<EOF
 docker pull 82xcherodinger/next-container:$BUILD_NUMBER
 cd next-docker-compose
 git pull --rebase
 exit
EOF