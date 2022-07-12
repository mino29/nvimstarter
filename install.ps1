# This will install my github repo's neovim config to a local windows machine
# find the default neovim init.vim file and copy here

Write-host "Setting up vim-plug for neovim..."
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

Write-host "Backing up the old neovim config file(s)"
Copy-Item ~/AppData/Local/nvim/ ~/AppData/Local/nvim.bak

Write-host "copy init.vim to replace the old init.vim"
Copy-Item -recurse ./nvim ~/AppData/Local/

Write-Host "You local neovim config has been updated."

nvim +PlugInstall +qa!
nvim +CocUpdate +qa!

Write-Host "You've installed the most beautiful neovim config, enjoy!"
