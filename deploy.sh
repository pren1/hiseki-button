#!/usr/bin/env bash
rm -r html
npm run build
mv dist html
#scp -r html/ root@8.210.51.250:/home/user/folder
#scp -r html/ root@8.210.51.250:/var/www

sudo scp -r "hk.pem" /Users/renpeng/Downloads/hiseki-button/html/ \
      ubuntu@ec2-18-163-181-172.ap-east-1.compute.amazonaws.com:/home/ubuntu

      ssh -i "hk.pem" ubuntu@ec2-18-163-181-172.ap-east-1.compute.amazonaws.com