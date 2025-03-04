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
set number relativenumber
set ruler
set shortmess=at
set showmatch
set smartcase

" indentation
set autoindent
set cindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set breakindent

" folder
set foldenable
set foldlevelstart=15

" statusline
set laststatus=2
set statusline=\ Total\ %L\ Line\ %l\ (%P)\ Col\ %c%V\ Buf\ %n
set statusline+=\ %m
set statusline+=%=
set statusline+=%r\ %y
set statusline+=\ (%{strlen(&fenc)?&fenc:'none'})
set statusline+=\ 
set showtabline=2

" timeout
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

" theme, color scheme
if (has("termguicolors"))
  set termguicolors
endif
let &t_SI="\e[6 q"
let &t_EI="\e[2 q"
set cursorcolumn
augroup InsertTheme
  au InsertEnter * set nocursorcolumn
  au InsertLeave * set cursorcolumn
augroup END
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
set colorcolumn=80,81,120,121
set list
set listchars=tab:\|\ ,lead:·,trail:·,nbsp:+,eol:⇣

" window
set splitbelow
set splitright

" miscellaneous
set nocompatible
set mouse=vin
set clipboard=unnamedplus

