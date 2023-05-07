" `https://github.com/junegunn/vim-plug`
call plug#begin('~/.vim/plugged')

" editor
Plug 'junegunn/fzf', { 'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'

" git
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'

" tex, markdown
Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'

" rust
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'

" theme

Plug 'nordtheme/vim'

call plug#end()

