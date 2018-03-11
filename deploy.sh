#!/bin/sh

sudo yum update -y
sudo yum install -y docker
sudo yum install -y git

sudo service docker start
sudo usermod -a -G docker ec2-user

sudo git clone https://github.com/balrubaye/node-app-1.git

sudo docker build -t node-app-1 ./node-app-1
sudo docker run -p 8081:8081 node-app-1

