#!/bin/bash

echo 'Güncellemeleri almak ister misiniz? (y/n)'
read check1 
if [[ $check1 == 'y' || $check1 == 'Y' ]]
then
sudo apt update && sudo apt upgrade -y 
fi 
clear
printf 'aşağıdaki programların kurulumunu onaylıyor musun?\n gnome-clock\n apache2\nchrome\n(y/n)'
read check2

if [[ $check2 == 'y' || $check2 == 'Y' ]]
then
sudo apt install gnome-clock && sudo apt install apache2 && sudo apt install google-chrome-stable
else 
exit
fi

