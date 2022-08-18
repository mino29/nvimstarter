# Clone the git to the .vim directory of home
git clone https://github.com/mino29/neovim_config.git $home\AppData\Local\nvim


# Install vim-plug package manager
echo "Setting up vim-plug manager for neovim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install plugins in vim with Vundle
echo "Installing vim plugins"
nvim +PlugInstall +qa!

# Give feedback that we installed the ultimate vimrc
echo "Installed the Ultimate Vim setup."
