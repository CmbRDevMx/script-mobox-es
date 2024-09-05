#!/bin/bash

R='\033[0;31m'
V='\033[0;32m'
B='\033[0;34m'
A='\033[0;33m'
C='\033[0;36m'
NC='\033[0m'
clear
echo -e "${V}Change custom wine${NC}"
echo ""
echo "Hi 👀"
echo -e "${A}Example:${NC} ${V}your-wine.tar.xz${NC}"
read -p $'\e[96minsert Full WineCustom name: \e[0m' name_wine
read -p $'\e[96minsert Name folder: \e[0m]' random_name 

echo -e "${A}Unziping file....${NC}"

tar xf /sdcard/Download/Telegram/"$name_wine" -C $PREFIX/glibc/ --transform='s/.*/"$random_name"/'

read -p $'\e[96minsert MoboxWine name to Replace: \e[0m]' mobox_wine

echo -e "${A}write files....${NC}"
sleep 1
cp -r "$PREFIX/glibc/$random_name"/* "$PREFIX/glibc/$mobox_wine"/
sleep 1
echo -e "${C}ready you can run and start mobox${NC}"
