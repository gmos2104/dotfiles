set number
set relativenumber

set expandtab
set autoindent
set path+=**

set smartcase

let g:netrw_banner=0                         " disable banner
let g:netrw_winsize=80                       " split window with 80% of screen
let g:netrw_altv=1                           " open vertical splits to the right
let g:netrw_browse_split=3                   " tab window on open
let g:netrw_liststyle=3                      " use tree view for directory display
let g:netrw_list_hide=netrw_gitignore#Hide() " ignore files on .gitignore

""" Load plugins using Plug
call plug#begin()
Plug 'vim-syntastic/syntastic'
Plug 'Yggdroot/indentLine'
call plug#end()

""" Recommended defaults for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_python_checkers = ['pylint']

""" I need to stop using the arrow keys for navigation (:
inoremap  <Up>    <NOP>
inoremap  <Down>  <NOP>
inoremap  <Left>  <NOP>
inoremap  <Right> <NOP>
nnoremap  <Up>    <NOP>
nnoremap  <Down>  <NOP>
nnoremap  <Left>  <NOP>
nnoremap  <Right> <NOP>
cnoremap  <Up>    <NOP>
cnoremap  <Down>  <NOP>
cnoremap  <Left>  <NOP>
cnoremap  <Right> <NOP>

filetype plugin on

autocmd FileType css setlocal sw=2 sts=2
autocmd FileType html setlocal sw=2 sts=2
autocmd FileType javascript setlocal sw=2 sts=2
autocmd FileType python setlocal sw=4 sts=4
