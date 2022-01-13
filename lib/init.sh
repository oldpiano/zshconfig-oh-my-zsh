#!/bin/sh
sudo apt install net-tools -y

sudo apt install zsh -y
sudo chsh ubuntu -s /bin/zsh

# oh-my-zsh
git clone -b ubuntu https://oldpiano@github.com/oldpiano/zshconfig-oh-my-zsh.git ~/.oh-my-zsh
echo 'source ~/.oh-my-zsh/lib/zshrc' >> .zshrc

# hstr
sudo add-apt-repository ppa:ultradvorka/ppa -y
sudo apt-get update
sudo apt-get install hstr -y
hstr --show-zsh-configuration >> ~/.zshrc
