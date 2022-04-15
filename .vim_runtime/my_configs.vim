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


set guifont=Consola\ :h12

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
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

nnoremap <leader>s :source ~/AppData/Local/nvim/init.vim<CR>


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



