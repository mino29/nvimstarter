# neovim_config

## Intro

These are my personal neovim config files, currently it only works on my windows 11 machine. 
I'll be trying out macOS and linux with the same config really soon, so hopefully I can get 
the same config on various machines.

## Structure

I separated my neovim config files into various files: the base init.vim, basic (neo)vim config,
my custom keymappings and plugin configs.

This structure and most of the configs are from the ever so popular ultiamte vimrc, it has many
quality of life configs, but some of them are not suited for my personal use. Plus the classic 
vim is so slow compared to neovim. So I have to manually migrate to neovim and do a lot of tweaking 
myself.

## Disclaimer

This is still a work in progress, many parts can still be broken, also I'm not a professional 
programmer, I'm more of a vim hobbiest and casual programmer. So if you find my code to be a mess,
all constructive critisism are welcomed.

Finally, English is not my native language, if you find typos and grammar errors, please let me know.

## Installation

I'd suggest you have winget, scoop installed on your windows system, this will
make your life a lot easier.

### winget and scoop

Winget should be bundled with windows 11 out of the box, copy the following code
in your powershell to try it out:

```winget --version```

If it returns the version number of winget instead of a bunch of red errors, you
are good to go. Otherwise you can download winget appimage from Mic,wrosoft's
official github page.

After that, the fastest way to install vim is by coping the following code
in your powershell:

```winget install vim.vim```

Of course only noobs use vim, if you're fancy like the rest of us, I'd push you
to use neovim, which is much speedier and prettier and has a ton of features
right from the getgo. Make sure you have scoop installed.

After that, the fastest way to install neovim is just this line of code:

```scoop install neovim```

Before continuing the next step, please make sure you have git, curl, 7zip,
lessmsi, dark installed in your system. If not, please copy this line to your
powershell and hit enter:

``` scoop install git 7zip curl lessmsi dark ```

While you at it, also do this:

``` scoop bucket add extras ```

### meovim install

on Windows, open up terminal(cmd or powershell) and do:

```git clone https://github.com/mino29/meovim "$env:LOCALAPPDATA\nvim"```

on Linux/Mac, open up terminal(cmd or powershell) and do:

```git clone https://github.com/mino29/meovim ~/.config/nvim```

After cloning, open up nvim, it should automatically install various plugins,
After that's done, reopen nvim, it should be ready to go.

If nothing's happening, try do:

```:PacerSync```

I'v test it on 2 windows 10 machines; 
arch linux(gnome desktop), fedora, WSL2(ubuntu).
Haven't test it on mac though, I don't really like mac these days. (Maybe when
the notch thing is gone.) 

But if you do own a mac, please tell me how the experience goes.

if your internect connection is unstable as mine, 
it should take a minute or two. 

However if your internet is pretty good and you are not based in mainland China,
(if you are: guys, set up a proxy service for)
the installation should be instantaneous. (less than 15 seconds)

### plugins and custom key mappings 

### how to update
