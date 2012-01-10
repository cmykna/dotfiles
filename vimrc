" Hmm.
call pathogen#infect()

if has("gui_running")
    set guioptions=egmrt
    set guioptions-=r
    set lines=54 columns=90
endif
colorscheme molokai
set guifont=Inconsolata:h15

" Necessary for cool Vim stuff
set nocompatible

" Turn on line numbering
set nu

" Toggle regular and relative line numbering
function! g:ToggleNuMode()
	if(&rnu==1)
		set nu
	else
		set rnu
	endif
endfunc

" This shows what you're typing as a command
set showcmd

" Folding
set foldmethod=marker

" Needed for syntax highlighting and stuff
filetype on
filetype plugin on
syntax enable

" Handle whitespace
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" Search stuff
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set gdefault
" Fix Vim's silly regex handling
nnoremap / /\v
vnoremap / /\v
" Toggle search highlights
nnoremap <F4> :set hlsearch! hlsearch?<CR>
" Use tab to skip to matching brackets
nnoremap <tab> %
vnoremap <tab> %

" Line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85
noremap <F2> :set nowrap!<cr>

" Status line
set laststatus=2
set statusline=%F%m%r%h%w\ 
set statusline+=%=
set statusline+=%Y[%{&ff}]
set statusline+=[%l,%v][%p%%]

" Other stuff
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast

let mapleader = ","
let maplocalleader = "\\"

" Key Mappings

" Toggle between normal and relative numbering
nnoremap <leader>n :call g:ToggleNuMode()<cr>

" Convenient movement stuff
nnoremap <C-J> ddp
nnoremap <C-K> dd2kp
nnoremap H 0
nnoremap L $
nnoremap j gj
nnoremap k gk

" stop common editing commands from saving stuff in " and 0
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C

" allow deleting single characters without updating the default register
noremap x "_x

" paste in visual mode without updating the default register
vnoremap p "_dP

" leave insert mode like a boss
inoremap jk <esc>

" easy .vimrc file editing
nnoremap ev :split $MYVIMRC<cr>
nnoremap sv :source $MYVIMRC<cr>

" Search mappings: centers the line a search is found on
map N Nzz
map n nzz

" : like a boss
nnoremap <space> :

" Map the arrows to something useful
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>
