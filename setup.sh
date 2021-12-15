#!/usr/bin/env bash

cd ~

sudo apt-get update
sudo apt-get install build-essential linux-headers-$(uname -r)
sudo apt-get install virtualbox-guest-additions-iso -y


echo '[*] Install git curl'
sudo apt install git -y
sudo apt install curl -y 

echo '[*] Install zsh'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo '[*] Install tmux'

sudo apt install tmux -y

echo '[*] Install custom conf tmux'

git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .



sudo apt install python3-pip -y
sudo apt install gdb -y
sudo apt install vim -y

echo '[*] Install pwn tools'
echo '[*] Install pwn-gdb tools'


git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
cd ~

echo '[*] Install stego tools'

wget https://github.com/RickdeJager/stegseek/releases/download/v0.6/stegseek_0.6-1.deb
sudo apt install ./stegseek_0.6-1.deb
