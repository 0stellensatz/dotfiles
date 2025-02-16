" `https://github.com/junegunn/vim-plug`
call plug#begin('~/.vim/plugged')

" editor
Plug 'junegunn/fzf', { 'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-surround'
Plug 'lambdalisue/vim-suda'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'

" git
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'github/copilot.vim'

" tex
Plug 'lervag/vimtex'

" markdown
Plug 'plasticboy/vim-markdown'

" rust
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'

" colorscheme
Plug 'navarasu/onedark.nvim'

call plug#end()

" `navarasu/onedark.nvim`

colo onedark

" `junegunn/vim-easy-align`

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" `plasticboy/vim-markdown`

let g:vim_markdown_math = 1

" `lervag/vimtex`

let g:tex_flavor = 'latex'

" `nathanealkane/vim-indent-guides`

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guifg='#5c6370' guibg='#282c34'
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guifg='#5c6370' guibg='#31353f'


