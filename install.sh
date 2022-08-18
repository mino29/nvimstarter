#!/bin/bash

# make sure to connect to github
host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
export ALL_PROXY="http://$host_ip:7890"

# Clone the git to the .vim directory of home
git clone https://github.com/mino29/neovim_config.git ~/.config/nvim

# Trenger jeg denne?
# cd ~/.config/nvim

# Import the vimrc files
# echo '" Import vim files
# source ~/.vim/runtime/vimrcs/import.vim
# ' > ~/.config/nvim/init.vim

# Create vimundo file for making "infinite" undoes for all files
# mkdir ~/.vim/vimundo

# Install vim-plug package manager
echo "Setting up vim plugin manager for neovim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Brows like a pro with ctags
sudo apt install universal-ctags

# copy my essential nvim config file
cp -r nvim ~/.config/

# install plugins in vim with vim plug
echo "Installing vim plugins"
nvim +PlugInstall +qa!

# install coc.nvim
nvim +CocUpdate +qa!

# Give feedback that we installed the ultimate vimrc
echo "Installed the Ultimate Vim setup."
