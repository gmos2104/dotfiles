set number
set relativenumber

set expandtab
set autoindent
set path+=**

let g:netrw_banner=0                         " disable banner
let g:netrw_winsize=80                       " split window with 80% of screen
let g:netrw_altv=1                           " open vertical splits to the right
let g:netrw_browse_split=3                   " tab window on open
let g:netrw_liststyle=3                      " use tree view for directory display
let g:netrw_list_hide=netrw_gitignore#Hide() " ignore files on .gitignore

filetype plugin on

autocmd FileType html setlocal sw=2 sts=2
autocmd FileType javascript setlocal sw=2 sts=2
autocmd FileType python setlocal sw=4 sts=4

""" Autocomplete common tags on insert mode
autocmd FileType html inoremap <a> <a<Space>href=""></a><Esc>F"i
autocmd FileType html inoremap <b> <strong></strong><Esc>F>a
autocmd FileType html inoremap <div> <div></div><Esc>F>a
autocmd FileType html inoremap <h1> <h1></h1><Esc>F>a
autocmd FileType html inoremap <h2> <h2></h2><Esc>F>a
autocmd FileType html inoremap <h3> <h3></h3><Esc>F>a
autocmd FileType html inoremap <h4> <h4></h4><Esc>F>a
autocmd FileType html inoremap <h5> <h5></h5><Esc>F>a
autocmd FileType html inoremap <h6> <h6></h6><Esc>F>a
autocmd FileType html inoremap <i> <em></em><Esc>F>a
autocmd FileType html inoremap <li> <li></li><Esc>F>a
autocmd FileType html inoremap <ol> <ol></ol><Esc>F>a
autocmd FileType html inoremap <p> <p></p><Esc>F>a
autocmd FileType html inoremap <ul> <ul></ul><Esc>F>a
