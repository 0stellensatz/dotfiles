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
set noexpandtab
set number
set hidden
set ruler
set shiftwidth=4
set shortmess=at
set showmatch
set smartcase
set ts=4

set foldenable
set foldlevelstart=15

set number relativenumber

set laststatus=2
set statusline=\ T%L/L%l/C%c%V/B%n
set statusline+=%=
set statusline+=%f
set statusline+=\ (%{strlen(&fenc)?&fenc:'none'})
set statusline+=\ 

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
