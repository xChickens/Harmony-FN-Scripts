#!/usr/bin/env bash

apt install
apt -y upgrade
apt -y install tmux
apt -y install yum
apt install sudo
apt -y install jq
apt install bc
apt install htop
curl -LO https://raw.githubusercontent.com/xChickens/Harmony-FN-Scripts/master/stat.sh && chmod u+x stat.sh
curl -LO https://raw.githubusercontent.com/xChickens/Harmony-FN-Scripts/master/rank.sh && chmod u+x rank.sh
curl -LO https://raw.githubusercontent.com/xChickens/Harmony-FN-Scripts/master/.bash_profile
curl -LO https://raw.githubusercontent.com/xChickens/Harmony-FN-Scripts/master/.bashrc
source .bashrc
update
reboot