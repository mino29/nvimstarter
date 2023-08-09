--settings for sumatraPDF
vim.cmd[[
    let g:vimtex_view_general_viewer = 'SumatraPDF'
    let g:vimtex_view_method = 'SumatraPDF'
    let g:livepreview_previewer = 'SumatraPDF'
    let g:livepreview_cursorhold_recompile = 0
    let g:vimtex_view_general_options
        \ = '-reuse-instance -forward-search @tex @line @pdf'
    let g:vimtex_view_general_options_latexmk = '-reuse-instance'
    let g:tex_flavor = 'latex'
    let g:vimtex_compiler_progname = 'nvr'
    let g:vimtex_toc_config = {
    \ 'name' : 'TOC',
    \ 'layers' : ['content', 'todo', 'include'],
    \ 'split_width' : 25,
    \ 'todo_sorted' : 0,
    \ 'show_help' : 1,
    \ 'show_numbers' : 1,
    \}
    " let g:vimtex_quickfix_mode = 0
]]

-- todos:
-- []todo: compile .tex file on save
-- []todo: usefule templates
-- []todo: snippets autocompletion
-- []todo: 
-- []todo: 
