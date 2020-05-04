#!/bin/bash

echo -e "\e[38;5;82mTask 1: Build 2 docker images with CentOS7 installed:"; tput sgr0
sudo docker-compose up --build -d
sleep 1
sudo docker-compose ps
echo -e "\e[38;5;80mDone."; tput sgr0

echo -e "\e[38;5;82mCheck HTTP on the first loadbalancer link (lb1):"; tput sgr0
curl "http://127.0.0.1:8081"; echo
sleep 1
echo -e "\e[38;5;82mCheck HTTP on the second loadbalancer link (lb2):"; tput sgr0
curl "http://127.0.0.1:8082"; echo
echo -e "\e[38;5;80mHealth check completed"; tput sgr0

