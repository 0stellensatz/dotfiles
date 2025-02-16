" .vimrc.d

command! Settings :tabnew $REPO/dotfiles/vimrc/vimrc
command! SettingsEditor :tabnew $REPO/dotfiles/vimrc/editor.vim
command! SettingsPlugin :tabnew $REPO/dotfiles/vimrc/plugins.vim
command! SettingsShortcuts :tabnew $REPO/dotfiles/vimrc/shortcuts.vim
command! SettingsFiletype :tabnew $REPO/dotfiles/vimrc/filetype.vim

command! LoadSettings :source ~/.vimrc

" swap ; and :

nnoremap ; :
nnoremap : ;

vnoremap : ;
vnoremap ; :

" swap j and k (for colemak layout)

nnoremap j h
nnoremap k j
nnoremap h k
nnoremap gk gj
nnoremap gh gk
nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>j
nnoremap <C-w>h <C-w>k

vnoremap j h
vnoremap k j
vnoremap h k
vnoremap gk gj
vnoremap gh gk
vnoremap <C-w>j <C-w>h
vnoremap <C-w>k <C-w>j
vnoremap <C-w>h <C-w>k

" input mode arrow keys

inoremap <C-f> <Right>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>

" activate FZF

nnoremap <C-t> :FZF<CR>

" hangul?

cabbrev ㄽ wq
cabbrev ㄹ w
cabbrev ㅅ q

