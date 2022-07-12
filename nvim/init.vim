" This is my own neovim config from scratch
" It will have tons of notes in it
"
"
"
"---------- note ---------- 
"on Linux, init.vim is located at ~/.config/nvim/init.vim
"on Windows, init.vim is located at ~\AppData\Local\nvim\init.vim
"
"
"
" In the future these will all be divided into vim files for a cleaner structur.
"



" Imports "{{{
" modular config files " {{{
" ---------------------------------------------------------------------

runtime ./base.vim
" ./themes.vim
" ./colors/themes.vim
" ./after/plugins
"
runtime ./plugins.vim
runtime ./mapping.vim

if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  " Do Windows stuff
  runtime ./windows.vim
endif

" ./linux.vim

"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  runtime ./colors/themes.vim
  colorscheme dracula
endif

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}

" autoreload " {{{
" this should auto source init.vim after each save

autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $NVIMRC"
" }}}
" vim: set foldmethod=marker foldlevel=0:
"
"
if has ("win32")
	set clipboard=unnamed
elseif has ("linux") || ("wsl")
	set clipboard=unnamedplus
endif
