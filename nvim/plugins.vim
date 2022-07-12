
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>>Plugin manager /Vim Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
"         _                       _             
"  __   _(_)_ __ ___        _ __ | |_   _  __ _ 
"  \ \ / / | '_ ` _ \ _____| '_ \| | | | |/ _` |
"   \ V /| | | | | | |_____| |_) | | |_| | (_| |
"    \_/ |_|_| |_| |_|     | .__/|_|\__,_|\__, |
"                          |_|            |___/ 
"
"
" Make (neo)vim more beautiful(UI)
    " Airline
    " Colorscheme
    " vim-Devicons
    " Indentline
    " IndentGuides
    " rainbow
    " file icons
"
"
" File explorer(s)
    " BufferExplorer
    " Bufferline
    " MRU
    " CTRLP
    " FZF
    " Telescope
    " NerdTree
"
"
" Make coding actually functional and faster
    " vim-coummentary
    " Yankstack
    " Vim-surround
    " coc.nvim (language server)
"
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> vim-plug, minimal plugin manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


call plug#begin()

Plug 'mhinz/vim-startify' " Startup screen/homescreen
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysiw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar/line
Plug 'vim-airline/vim-airline-themes' " More themes
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'dracula/vim', { 'as': 'dracula' } " Dracula theme
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'kyazdani42/nvim-web-devicons' " Additional file icons
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'Xuyuanp/nerdtree-git-plugin' " NerdTree + git
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/tpope/vim-fugitive' " Git stuff
" Plug 'Yggdroot/indentLine' " Indentline
Plug 'nathanaelkane/vim-indent-guides' "Indent guides
Plug 'luochen1990/rainbow' " Paren colorized
Plug 'lervag/vimtex' " Vim LaTex
Plug 'sbdchd/neoformat' " formatter, support multiple languages
Plug 'metakirby5/codi.vim' " Show python script run result
Plug 'jiangmiao/auto-pairs' " Auto pairs parenthesis and stuff
Plug 'https://github.com/tpope/vim-repeat' " Repeat on crack
Plug 'jlanzarotta/bufexplorer' " BufferExplorer
Plug 'maxbrunsfeld/vim-yankstack' " Yankstack
Plug 'yegappan/mru' " Most Recent Used (files) 
Plug 'kien/ctrlp.vim' " Ctrl+P alternative to fzf
Plug 'junegunn/fzf' " Ultimate fuzzyfinder fzf
Plug 'terryma/vim-multiple-cursors' " Multiple cursors
Plug 'dense-analysis/ale' " Syntax check and lint
Plug 'airblade/vim-gitgutter' " Vim-gitgutter
Plug 'tpope/vim-fugitive' " Vim-fugitive (not sure what it does yet)
Plug 'godlygeek/tabular' " Tabular
Plug 'preservim/vim-markdown' " Markdown
Plug 'kchmck/vim-coffee-script' " Coffeescript support
Plug 'https://github.com/fatih/vim-go' " Add golang support
Plug 'garbas/vim-snipmate' " Snippets
Plug 'marcweber/vim-addon-mw-utils' " vim-snipmate support
Plug 'tomtom/tlib_vim' " vim-snipmate support
Plug 'nvim-lua/plenary.nvim' " Telescope dependency
Plug 'nvim-telescope/telescope.nvim' " Alternative fuzzy finder
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Language autocompletion support
Plug 'MunifTanjim/nui.nvim' " UI Component Library for Neovim
Plug 'wfxr/minimap.vim' " Fancy minimap
Plug 'junegunn/goyo.vim' " Zen coding mode
Plug 'akinsho/bufferline.nvim', { 'tag': '*' } " Add a GUI-like tab for buffers
Plug 'liuchengxu/vim-which-key' " shortcut cheatsheet
Plug 'brglng/vim-im-select' "Auto Switch to English input in Normal mode
Plug 'voldikss/vim-floaterm' " Floating terminal
Plug 'sindrets/diffview.nvim' " better diffview
Plug 'christoomey/vim-tmux-navigator'
Plug 'mtdl9/vim-log-highlighting'
Plug 'junegunn/vim-emoji' " Emoji in vim, how cute is that
Plug 'https://gitlab.com/gi1242/vim-emoji-ab.git' " Additional emoji support


call plug#end()


