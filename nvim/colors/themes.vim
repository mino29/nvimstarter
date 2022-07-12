
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" idea: automatically change theme based on local time(auto-light/dark mode)


""""""""""" really cool themes   5/5

:colorscheme dracula
" :colorscheme gruvbox
" :colorscheme hybrid
" :colorscheme hybrid_reverse
" :colorscheme nord
" :colorscheme snow
" :colorscheme molokai
" :colorscheme oceanic_material
" :colorscheme one
" :colorscheme onedark
" :colorscheme scheakur
" :colorscheme pink-moon
" :colorscheme orange-moon
" :colorscheme spacecamp
" :colorscheme spacecamp_lite
" :colorscheme afterglow
" :colorscheme ayu


""""""""""" nice themes   4/5

" :colorscheme jellybeans
" :colorscheme mountaineer-grey
" :colorscheme iceberg
" :colorscheme PaperColor
" :colorscheme lucid
" :colorscheme minimalist
" :colorscheme lucius
" :colorscheme alduin
" :colorscheme archery
" :colorscheme apprentice
" :colorscheme carbonized-dark
" :colorscheme materialbox
" :colorscheme challenger_deep
" :colorscheme dogrun
" :colorscheme flattened_dark
" :colorscheme meta5
" :colorscheme fogbell_lite
" :colorscheme gotham
" :colorscheme gotham256
" :colorscheme hybrid_material
" :colorscheme yellow-moon
" :colorscheme termschool
" :colorscheme mountaineer
" :colorscheme one-dark
" :colorscheme onehalfdark
" :colorscheme sonokai
" :colorscheme seoul256
" :colorscheme seoul256-light
" :colorscheme solarized8
" :colorscheme solarized8_flat
" :colorscheme solarized8_high


""""""""""" meh themes   3/5

" :colorscheme OceanicNext
" :colorscheme orbital
" :colorscheme abstract
" :colorscheme anderson
" :colorscheme angr
" :colorscheme atom
" :colorscheme carbonized-light
" :colorscheme darkblue
" :colorscheme zellner
" :colorscheme elflord
" :colorscheme evening
" :colorscheme flattened_light
" :colorscheme focuspoint
" :colorscheme fogbell
" :colorscheme fogbell_light
" :colorscheme github
" :colorscheme torte
" :colorscheme koehler
" :colorscheme happy_hacking
" :colorscheme two-firewatch
" :colorscheme twilight256
" :colorscheme tender
" :colorscheme stellarized
" :colorscheme space-vim-dark
" :colorscheme industry
" :colorscheme murphy
" :colorscheme parsec
" :colorscheme onehalflight
" :colorscheme pablo
" :colorscheme paramount
" :colorscheme peachpuff
" :colorscheme purify
" :colorscheme rakr
" :colorscheme rdark-terminal2
" :colorscheme sierra
" :colorscheme slate


""""""""""" worst themes   2/5

" :colorscheme 256_noir
" :colorscheme OceanicNextLight
" :colorscheme blue
" :colorscheme default
" :colorscheme delek
" :colorscheme wombat256mod
" :colorscheme lightning
" :colorscheme morning
" :colorscheme mountaineer-light
" :colorscheme pyte
" :colorscheme ron
" :colorscheme shine
" :colorscheme solarized8_low


" set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" >>> Airline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" let g:airline#extensions#tabline#enabled = 1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" let g:airline_theme='dark'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
