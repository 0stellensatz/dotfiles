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
