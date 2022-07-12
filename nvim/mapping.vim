"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Editing/ vim hard mode cursor movement
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
""" >>> leader key
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudosaves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit! 

" Edit init.vim quickly on the fly
nmap <leader>g :e $MYVIMRC<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Editing/ cursor movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" let 0 go the firt non-white space character in the line
map 0 ^

" let ^ go the firt white space character in the line
" map ^ 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Editing/ invisible element
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Show white space as actual unicode characters


set list
set listchars=tab:\ \ ┊,trail:●,extends:»,precedes:«,nbsp:×,space:·,eol:↓

" toggle whitespace character with leader key + backslash (\)
:nmap <leader>\ :set invlist<cr>



" " delete trailing white space on save, useful for some filetypes ;)
" fun! CleanExtraSpaces()
"     let save_cursor = getpos(".")
"     let old_query = getreg('/')
"     silent! %s/\s\+$//e
"     call setpos('.', save_cursor)
"     call setreg('/', old_query)
" endfun

" if has("autocmd")
"     autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
" endif

