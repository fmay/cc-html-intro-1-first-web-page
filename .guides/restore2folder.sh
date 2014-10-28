#!/bin/bash

# Set colors
red='\e[0;31m'
green='\e[0;32m'
NC='\e[0m' # No Color

echo
echo '-------------------------------------'
echo -e "${red}Restoring your workspace${NC}"

# Remove the entire contents of the root folder
 rm -rf ~/workspace/* 

# Copy the example folder to the root
mkdir ~/workspace/$1
cp -r ~/workspace/.guides/$1/* ~/workspace/$1
mkdir ~/workspace/$2
cp -r ~/workspace/.guides/$2/* ~/workspace/$2
mkdir ~/workspace/$3
cp -r ~/workspace/.guides/$3/* ~/workspace/$3
mkdir ~/workspace/$4
cp -r ~/workspace/.guides/$4/* ~/workspace/$4

echo -e "${red}Done!!! You can close the tab now.${NC}"
echo '-------------------------------------'
echo