
" Fundamentals "{{{
" ---------------------------------------------------------------------

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set showcmd
set cmdheight=1
set laststatus=2
"let loaded_matchparen = 1
set backupskip=/tmp/*,/private/tmp/*

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline
"set cursorcolumn

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript
" Fish
au BufNewFile,BufRead *.fish set filetype=fish

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

" autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
" autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
" autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set number
set relativenumber
set cursorline
set ruler
set colorcolumn=80
set scrolloff=15
set mouse=a


filetype plugin on
filetype indent on



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> file state manipulations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set noswapfile
set nobackup


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> avoid encoding problems
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set encoding=UTF-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Indentations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=80


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> History
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
" Not sure what it does at moment, will figure it out later
 set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> workspace/ buffer management
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""









"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> workspace/ tab management
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> workspace/ split management
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set splitbelow
set splitright



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Search Replace and highlight/show
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" start a search and match
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Ignore case/case insensitive when searching
set ignorecase

" Not sure what it does yet, but since everyone's using it 
set smartcase

"Highlight you search
set hlsearch

" Not sure what it does yet, but since everyone's using it 
set incsearch

"Quickly disable highlight search temporarily
map <silent> <leader><cr> :noh<cr>

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif






"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> NERDTree Bindings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Coc.nvim notes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-pyright for python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE


" Must-installs
let g:coc_global_extensions = [
    \ 'coc-pairs',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-json',
    \ 'coc-pyright',
    \ 'coc-go',
    \ 'coc-java',
    \ 'coc-java-vimspector',
    \ 'coc-lua',
    \ 'coc-sh',
    \ 'coc-markdownlint',
    \ 'coc-powershell',
    \ 'coc-marketplace',
    \ 'coc-ltex',
    \ 'coc-ci',
    \]






"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Indentline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"---- note ----
"This style of indent is much cleaner,
"but not so obvious


" let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
" let g:indent_guides_start_level           = 1  " 从第1层开始可视化显示缩进


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Better indent guides
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"---- note ----
"This style of indent is much apparent,
"but not so minimalistic and clean


let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Parenthesis rainbow color matching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> bufExplorer plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> MRU plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> YankStack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> CTRL-P
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

" Quickly find and open a file in the current working directory
let g:ctrlp_map = '<C-f>'
map <leader>j :CtrlP<cr>

" Quickly find and open a buffer
map <leader>b :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> ZenCoding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> snipMate (beside <TAB> support <CTRL-j>)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>
let g:snipMate = { 'snippet_version' : 1 }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Vim grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> surround.vim config
" Annotate strings with gettext 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Ale (syntax checker and linter)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> EditorConfig (project-specific EditorConfig rule)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy the link to the line of a Git repository to the clipboard
nnoremap <leader>v :.GBrowse!<CR>
xnoremap <leader>v :'<'>GBrowse!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Vim-markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" no folding in markdown
let g:vim_markdown_folding_disabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Telescope fuzzy finder
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Minimap 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basic auto start
" let g:minimap_width = 15
" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Bufferline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" In your init.lua or init.vim
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><mymap> :BufferLineMoveNext<CR>
nnoremap <silent><mymap> :BufferLineMovePrev<CR>

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Floating terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration example
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

" Configuration example
let g:floaterm_keymap_new = '<leader>ft'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Startify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" custom header using figlet with ascii art
" install figlet with scoop install figlet first
" figlet example
 let g:startify_custom_header =
       \ startify#pad(split(system('figlet -w 100 NEOVIM'), '\n'))

 " neo-cowsay example
 " let g:startify_custom_header =
       " \ startify#pad(split(system('cowsay -f gopher A la vie a la mort'), '\n'))


" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction


let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },]
        " \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        " \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        " \ { 'type': 'commands',  'header': ['   Commands']       },
        " \ ]




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >>> Emoji
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Still haven't figure out how emoji works


" Emoji completion
set completefunc=emoji#complete


" Emoji completion
" %s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g





" ---------- note ----------
"  Things that are meant to be in the future
"  How to set thing according to your os settings
"  for example: 
"		if os is mac, then ...
"		if os is windows, then ...
"		if os is linux, then ...
"



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> OS specific settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" This part let (neo)vim autodetect you current os:
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif


" This part let (neo)vim autodetect you current os and set guifont accordingly:
if has("gui_running")
    if g:os == "Darwin"
        set guifont=Noto\ Mono:h12
    elseif g:os == "Linux"
        set guifont=Noto\ Mono\ 10
    elseif g:os == "Windows"
        set guifont=Noto_Mono:h12:cANSI
    endif
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> 📋 clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" This part applies shared clipboard feature between os and vim:

" for this to work, on windows just download the latest neovim:
" 	scoop bucket add extra
" 	scoop install neovim
" you are good to go, win32yank is bundled in

" in wsl, you have to download win32yank yourself, then copy the exe file to
" /urs/local/bin


" Then your wsl and vim are truely one unified body




" 			:if has("win32")
" 							*feature-list*
" 		    List of supported pseudo-feature names:
" 			acl		|ACL| support.
" 			bsd		BSD system (not macOS, use "mac" for that).
" 			clipboard	|clipboard| provider is available.
" 			fname_case	Case in file names matters (for Darwin and MS-Windows
" 					this is not present).
" 			iconv		Can use |iconv()| for conversion.
" 			linux		Linux system.
" 			mac		MacOS system.
" 			nvim		This is Nvim.
" 			python3		Legacy Vim |python3| interface. |has-python|
" 			pythonx		Legacy Vim |python_x| interface. |has-pythonx|
" 			sun		SunOS system.
" 			ttyin		input is a terminal (tty).
" 			ttyout		output is a terminal (tty).
" 			unix		Unix system.
" 			*vim_starting*	True during |startup|.
" 			win32		Windows system (32 or 64 bit).
" 			win64		Windows system (64 bit).
" 			wsl		WSL (Windows Subsystem for Linux) system.

" new-found features
" press g then ctrl-g, shows the word count of current buffer
