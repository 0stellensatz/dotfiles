" configuration for `junegunn/vim-easy-align`

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" configuration for `junegunn/seoul256`

let g:seoul256_background = 236
colo seoul256

" configuration for `Sirver/ultisnips`

let g:UltiSnipsSnippetDirectories=[$DOTFILES.'/vimrc/UltiSnips']

let g:UltiSnipsExpandTrigger='<c-e>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

" configuration for `plasticboy/vim-markdown`

let g:vim_markdown_math = 1

" configuration for `neoclide/coc.nvim`

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
