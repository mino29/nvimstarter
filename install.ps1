# This will install my github repo's neovim config to a local windows machine
# find the default neovim init.vim file and copy here
# find the whole .vim_runtime folder, and copy here (overwrite if necessary)

Copy-Item init.vim ~/AppData/Local/nvim/init.vim 
Copy-Item -Recurse -Force .vim_runtime ~

