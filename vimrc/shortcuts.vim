" .vimrc.d

command! Settings :tabnew $DOTFILES/vimrc/editor.vim
command! SettingsPlugin :tabnew $DOTFILES/vimrc/plugins.vim
command! SettingsPluginConfig :tabnew $DOTFILES/vimrc/plugins-config.vim
command! SettingsShortcuts :tabnew $DOTFILES/vimrc/shortcuts.vim
command! LoadSettings :source ~/.vimrc

" pandoc

command! BuildGFM :! pandoc -f gfm -i % -o %:r.html

" tex

command! BuildLaTeX :! latex % && dvipdfmx %:r
command! BuildPLaTeX :! platex % && dvipdfmx %:r
command! BuildXeLaTeX :! xelatex %

command! MainLaTeX :! latex main.tex && dvipdfmx main
command! MainPLaTeX :! platex main.tex && dvipdfmx main
command! MainXeLaTeX :! xelatex main.tex

command! ClearTeX :! rm %:r.aux %:r.log %:r.out %:r.dvi %:r.pdf

command! OpenPDF :! open %:r.pdf
command! OpenMain :! open main.pdf
command! Open :! open %
command! Reveal :! open -R %
command! PBcopy :! cat % | pbcopy

command! OpenPDFL :! xdg-open %:r.pdf
command! OpenMainL :! xdg-open main.pdf
command! OpenL :! xdg-open %
command! PBcopyL :! cat % | xclip -selection clipboard

" system

command! SudoWrite :w !sudo tee %

" swap ; and :

nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;

" swap j and k (for colemak layout)

nnoremap j h
vnoremap j h
nnoremap k j
vnoremap k j
nnoremap h k
vnoremap h k

" swap r and <C-r>

nnoremap r <C-r>
vnoremap r <C-r>
nnoremap <C-r> r
vnoremap <C-r> r

" input mode arrow keys

inoremap <C-f> <Right>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>

" activate FZF

nnoremap <C-t> :FZF<CR>

