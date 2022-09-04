# Clone the git to the .vim directory of home
git clone https://github.com/mino29/meovim.git "$env:LOCALAPPDATA\nvim"


# install plugins in vim with Vundle
echo "Installing vim plugins"
nvim +PackerSync +qa!

# Give feedback that we installed the ultimate vimrc
echo "Meovim Installed, meow~"
