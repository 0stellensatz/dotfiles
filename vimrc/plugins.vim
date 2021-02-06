" `https://github.com/junegunn/vim-plug`
call plug#begin('~/.vim/plugged')

" vimwiki

Plug 'vimwiki/vimwiki'

" editor
Plug 'junegunn/fzf', { 'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'gorkunov/smartpairs.vim'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'

" autocomplete, lints
" :CocInstall coc-ultisnips
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-rls', {'do': 'yarn install --frozen-lockfile'}
Plug 'fannheyward/coc-pyright', {'do': 'yarn install --frozen-lockfile'}

" git
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/vim-gitbranch'

" tex, markdown
Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'

" rust
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'

" ruby
Plug 'vim-ruby/vim-ruby'

" theme, colorscheme
Plug 'junegunn/seoul256.vim'
Plug 'mhinz/vim-startify'

call plug#end()

