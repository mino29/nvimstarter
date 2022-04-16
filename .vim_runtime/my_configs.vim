"
"
" Personal play ground for various (neo)vim configs
"
"
"
"
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> GuiFont configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




" Somehow this only works with goneovim but not nvim-qt

" :set guifont=Hack\ NF\ :h11
:set guifont=CaskaydiaCove\ NF\ :h11

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Default terminal shell 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set shell=powershell

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" share os clipboard (only paste)
set clipboard=unnamed

" ,y copy to system clipboard
map <leader>y "*y
" ctrl +c in visual mode copy to system clipboard/register
vmap <C-c> "+y

" ctrl +a to select all
nnoremap <C-A> ggVG



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> vimrc/init.vim editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" After editing .vim or .vimrc files, saving will automatcially source it

" Automatically source vimrc on save.
" autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" nnoremap <leader>s :source ~/AppData/Local/nvim/init.vim<CR>
nnoremap <leader>t :source $MYVIMRC<CR>
" autocmd! bufwritepost $MYVIMRC source $MYVIMRC<CR>
"
" autocmd! bufwritepost  ~/.vim_runtime/my_configs.vim source $MYVIMRC
" autocmd! bufwritepost  ~/.vim_runtime/vimrcs/plugins_config.vim source $MYVIMRC

" autocmd! bufwritepost  ~/.vim_runtime/my_configs.vim source $MYVIMRC<CR>










"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Show whitespace as visible characters
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" :set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" if has('gui_running')
"     set listchars=tab:▶\ ,trail:·,extends:\#,nbsp:.
" else
"     set listchars=tab:>.,trail:.,extends:\#,nbsp:.
" endif


set list
set listchars=tab:\ \ ┊,trail:●,extends:»,precedes:«,nbsp:×,space:·,eol:↓

" toggle whitespace character with leader key + backslash (\)
:nmap <leader>\ :set invlist<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> split workspace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set splitbelow
set splitright



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> vim on hardmode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


nnoremap Q <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>








" note that this configuration will cause stutter in vim,
" map capslock as Escape key if possible

" this maps jh as the Escape key in insert mode
" inoremap jh <Esc>
" this maps jk as the Escape key in normal mode
" nnoremap jk <ESC>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Autoformat file on save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""








