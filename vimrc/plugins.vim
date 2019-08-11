" `https://github.com/junegunn/vim-plug`

call plug#begin('~/.vim/plugged')

" editor

Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'gorkunov/smartpairs.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'cespare/vim-toml'
Plug 'SirVer/ultisnips'

" git

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/vim-gitbranch'

" latex, markdown

Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'
Plug 'dkarter/bullets.vim'

" ruby

Plug 'vim-ruby/vim-ruby'

" theme, colorscheme

Plug 'junegunn/seoul256.vim'
call plug#end()
