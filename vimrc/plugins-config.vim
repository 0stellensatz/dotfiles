" `junegunn/vim-easy-align`

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" `junegunn/seoul256`

let g:seoul256_background=234
colo seoul256

" `plasticboy/vim-markdown`

let g:vim_markdown_math = 1

" `lervag/vimtex`

let g:tex_flavor = 'latex'

" `nathanealkane/vim-indent-guides`

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guifg='#476f97' guibg=NONE
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guifg='#979747' guibg=NONE

