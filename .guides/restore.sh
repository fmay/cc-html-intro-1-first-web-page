#!/bin/bash

# Set colors
red='\e[0;31m'
green='\e[0;32m'
NC='\e[0m' # No Color

echo
echo '-------------------------------------'
echo -e "${red}Restoring your workspace${NC}"

# Temporary until Codio Guides is done. Copy annotations file to safety
cp -r ~/workspace/annotations.md ~/workspace/.guides/annotations.md

# Remove the entire contents of the root folder
rm -rf ~/workspace/* 

# Copy the example folder to the root
cp -r ~/workspace/.guides/$1/* ~/workspace

# Temporary until Codio Guides is done. Restore annotations.md file
cp -r ~/workspace/.guides/annotations.md ~/workspace


echo -e "${red}Done!!! You can close the tab now.${NC}"
echo '-------------------------------------'
echo