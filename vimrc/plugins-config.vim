" `junegunn/vim-easy-align`

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" `junegunn/seoul256`

let g:seoul256_background=234
colo seoul256

" `Sirver/ultisnips`

let g:UltiSnipsSnippetDirectories=[$DOTFILES.'/vimrc/UltiSnips']

let g:UltiSnipsExpandTrigger='<c-e>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

" `plasticboy/vim-markdown`

let g:vim_markdown_math = 1

" `neoclide/coc.nvim`

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <silent> <C-s> <Plug>(coc-cursors-position)

" `lervag/vimtex`

let g:tex_flavor = 'latex'

" `nathanealkane/vim-indent-guides`

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guifg='#476f97' guibg=NONE
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guifg='#979747' guibg=NONE

