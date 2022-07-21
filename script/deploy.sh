#!/bin/sh
ssh root@139.180.141.237 <<EOF
 docker pull 82xcherodinger/next-container
 docker-compose up -d
 exit
EOF