#!/usr/bin/env bash

cd ~

sudo apt-get update
sudo apt-get install xclip  -y

if [ $# -eq 0 ]
then
    sudo apt-get install build-essential linux-headers-$(uname -r) -y
    sudo apt-get install virtualbox-guest-additions-iso -y

    sudo apt install build-essential libtool  tree g++ gcc texinfo curl wget automake autoconf python3 python3-pip python3-dev libssl-dev libffi-dev subversion unzip libedit-dev nasm virtualenvwrapper lsb-release -y
    sudo apt-get install ruby-full -y
    sudo gem install one_gadget
    sudo apt install binwalk -y 
    
    echo '[*] Install git curl'
    sudo apt install ipython3 -y
    sudo apt install curl -y 
    pip3 install chepy

    echo '[*] Install tmux'

    sudo apt install tmux -y

    echo '[*] Install custom conf tmux'

    git clone https://github.com/gpakosz/.tmux.git
    ln -s -f .tmux/.tmux.conf
    cp .tmux/.tmux.conf.local .
    cp ./setupVM/conf/.tmux.conf.local .

    echo '[*] Install pwntools'

    python3 -m pip install --upgrade pip
    python3 -m pip install --upgrade pwntools

    wget https://github.com/io12/pwninit/releases/download/3.2.0/pwninit -P ~/.local/bin/
    chmod +x ~/.local/bin/pwninit
    
    echo '[*] Install vim'

    sudo apt install vim -y
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh

    cp ./setupVM/conf/.vimrc ~/.vim_runtime/my_configs.vim
    echo '[*] Install ctf-tools'

    git clone https://github.com/zardus/ctf-tools.git
    ./ctf-tools/bin/manage-tools setup
     
    git clone https://github.com/pwndbg/pwndbg
    cd pwndbg
    ./setup.sh
    
    if [ -d ~/.oh-my-zsh ]; then
        echo "oh-my-zsh is installed"
    else
        echo '[*] Install zsh & oh my zsh'
        sudo apt install zsh -y 
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
        echo 'export PATH="~/.local/bin/:$PATH"' >> .zshrc
        chsh -s $(which zsh)
    fi
    source .zshrc
fi

# IS_PWN=flase 
# for i in "$@" ; do
#     if [[ $i == "pwn" ]] ; then
#        IS_PWN=true 
#     fi
# done

# if $IS_PWN ; then
# #     wget -O ~/.gdbinit-gef.py -q http://gef.blah.cat/py
# #     echo source ~/.gdbinit-gef.py >> ~/.gdbinit
#     ~/ctf-tools/bin/manage-tools -s install gdb
#     ~/ctf-tools/bin/manage-tools -s install pwntools
#     ~/ctf-tools/bin/manage-tools -s install gef
#        sudo apt-get install -y nasm
#        sudo apt-get install -y libedit-dev
#           make
#     ~/ctf-tools/bin/manage-tools -s install rappel
#     ~/ctf-tools/bin/manage-tools -s install rappel
#     ~/ctf-tools/bin/manage-tools -s install rappel
#     ~/ctf-tools/bin/manage-tools -s install rappel
# fi


# if [ $# -eq 0 ]
# then
#   echo "Usage: ..."
#   exit 1
# fi


# echo '[*] Install pwn tools'
# echo '[*] Install pwn-gdb tools'
# sudo apt install gdb -y


# git clone https://github.com/pwndbg/pwndbg
# cd pwndbg
# ./setup.sh
# cd ~


# echo '[*] Install stego tools'

# wget https://github.com/RickdeJager/stegseek/releases/download/v0.6/stegseek_0.6-1.deb
# sudo apt install ./stegseek_0.6-1.deb



