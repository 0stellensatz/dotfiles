" highlighting

if has("syntax")
	syntax on
endif

set hlsearch 
set incsearch

" character encoding

set encoding=utf-8

" editing

set autoread
set autowrite
set backspace=indent,eol,start
set cursorline
set hidden
set number
set ruler
set shortmess=at
set showmatch
set smartcase

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

autocmd BufNewFile,BufRead *.json setlocal ft=javascript
autocmd BufNewFile,BufRead *.yaml setlocal sw=2 ts=2 sts=2 et
autocmd BufNewFile,BufRead *.py   setlocal sw=4 ts=4 sts=4 et
autocmd BufNewFile,BufRead *.tex   setlocal sw=4 ts=4 sts=4 et

set foldenable
set foldlevelstart=15

set number relativenumber

set laststatus=2
set statusline=\ T%L/L%l/C%c%V/B%n
set statusline+=\ %m
set statusline+=%=
set statusline+=%r\ %y\ %f
set statusline+=\ (%{strlen(&fenc)?&fenc:'none'})
set statusline+=\ 

set ttimeoutlen=5

" visual mode

set virtualedit=block

" command mode

set ignorecase smartcase
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

" indentation

set autoindent
set cindent

" theme, color scheme

if (has("termguicolors"))
  set termguicolors
endif

augroup InsertTheme
	au InsertEnter * set cursorcolumn
	au InsertLeave * set nocursorcolumn
augroup END

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set colorcolumn=80,81,130,131
set list
set listchars=tab:\|\ ,trail:·,nbsp:+,eol:⇣

" window

set splitbelow
set splitright

" miscellaneous

set nocompatible
set mouse=vin
