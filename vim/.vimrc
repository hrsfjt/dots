set number
set ruler
set wildmenu
set ignorecase
set smartcase
set wrapscan
set cursorline
set autoindent

set showmatch matchtime=1
set cinoptions+=:0
set cmdheight=2
set laststatus=2
set virtualedit=block
set ambiwidth=double
set fenc=utf-8

set tabstop=4
set shiftwidth=4

set showcmd

set fileencodings=utf-8,cp932,euc-jp,sjis

syntax on
set syntax=markdown
autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
