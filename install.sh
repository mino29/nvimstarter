# This will install my github repo's neovim config to a local linux machine
# This require neovim 7+, I suggest use this config on an Arch based distro or
# use homebrew for linux to install the latest version of neovim

echo "Setting up vim-plug for neovim..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Backing up the old neovim config file(s)"
cp ~/.config/nvim/ ~/.config/nvim.bak

echo "copy init.vim to replace the old init.vim"
cp -r ./nvim ~/AppData/Local/

echo "You local neovim config has been updated."

nvim +PlugInstall +qa!
nvim +CocUpdate +qa!

echo "You've installed the most beautiful neovim config, enjoy!"
echo "if your internet connection is not that stable,"
echo "you can always come back"
echo "and type :PlugInstall to retry install failed plugins"
