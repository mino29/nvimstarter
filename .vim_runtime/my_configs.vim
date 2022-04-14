"
"
" Personal Testing ground for various (neo)vim configs
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
""" >>> vimrc editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" After editing .vim or .vimrc files, saving will automatcially source it

" " Source vim configuration file whenever it is saved
" if has ('autocmd')          " Remain compatible with earlier versions
"  augroup Reload_Vimrc       " Group name.  Always use a unique name!
"     autocmd!                " Clear any preexisting autocommands from this group
"     autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
"     autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
"   augroup END
" endif " has autocmd


" Automatically source vimrc on save.
autocmd! bufwritepost $MYVIMRC source $MYVIMRC



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







