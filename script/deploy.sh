#!/bin/sh
ssh root@49.229.40.34 <<EOF
 docker pull 82xcherodinger/next-container:$BUILD_NUMBER
 docker-compose up -d
 exit
EOF