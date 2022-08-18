# This will upload your local neovim config to my github repository
# find the default neovim init.vim file and copy here
# find the whole .vim_runtime folder, and copy here (overwrite if necessary)

Copy-Item -Recurse -Force ~/AppData/Local/nvim ~/Documents/GitHub/neovim_config/

Write-Host "You've upload your local neovim config, ready to commit"

git add .
