# This will upload your local neovim config to my github repository
# find the default neovim init.vim file and copy here
# find the whole .vim_runtime folder, and copy here (overwrite if necessary)

Copy-Item ~/AppData/Local/nvim/init.vim ~/Documents/GitHub/neovim_config/init.vim
Copy-Item -Recurse -Force ~/.vim_runtime ~/Documents/GitHub/neovim_config/

