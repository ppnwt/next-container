#!/bin/sh
ssh root@45.32.100.111 <<EOF
 docker pull 82xcherodinger/next-container:$BUILD_NUMBER
 docker-compose up -d
 exit
EOF