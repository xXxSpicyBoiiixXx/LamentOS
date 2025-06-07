#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm base-devel git python python-pip virtualenv unzip wget curl net-tools nmap tcpdump wireshark-qt john hashcat python-setuptools smbclient ruby go jq inetutils bind nikto sqlmap gobuster

if ! command -v yay &> /dev/null; then
    cd /tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ~
fi

yay -S --noconfirm responder enum4linux-ng-git burpsuite ffuf amass seclists bettercap metasploit neo4j-community wpscan

pip install --upgrade pip
pip install bloodhound-python git+https://github.com/forta/impacket.git

cd ~
git clone https://github.com/Pennyw0rth/NetExec.git
cd NetExec
python -m venv venv
souce venv/bin/activate
pip install -r requirements.txt

export PATH=$PATH:$(go env GOPATH)/bin
go install github.com/ropnop/kerbrute@latest

mkdir -p ~/wordlists
curl -L https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt -o ~/wordlists/rockyou.txt
