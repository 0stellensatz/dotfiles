" `https://github.com/junegunn/vim-plug`

call plug#begin('~/.vim/plugged')

" editor

Plug 'junegunn/fzf', { 'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'gorkunov/smartpairs.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'

" autocomplete

Plug 'SirVer/ultisnips'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" git

Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/vim-gitbranch'

" tex, markdown

Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'
Plug 'dkarter/bullets.vim'

" rust

Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'

" ruby

Plug 'vim-ruby/vim-ruby'

" theme, colorscheme

Plug 'junegunn/seoul256.vim'
call plug#end()

