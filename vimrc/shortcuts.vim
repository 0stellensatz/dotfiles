" .vimrc.d

command Settings :tabnew $DOTFILES/vimrc/editor.vim
command SettingsPlugin :tabnew $DOTFILES/vimrc/plugins.vim
command SettingsPluginConfig :tabnew $DOTFILES/vimrc/plugins-config.vim
command SettingsShortcuts :tabnew $DOTFILES/vimrc/shortcuts.vim
command LoadSettings :source ~/.vimrc

" tex

command BuildL :! latex % && dvipdfmx %:r
command BuildP :! platex % && dvipdfmx %:r
command BuildX :! xelatex %

command ClearTeX :! rm %:r.aux %:r.log %:r.out %:r.dvi %:r.pdf

command OpenPDF :! open %:r.pdf
command Open :! open %
command Reveal :! open -R %
command PBcopy :! cat % | pbcopy

" markdown

command MDGen :! python3 build.py
command MDRegen :! python3 build.py regenerate
command MDDebug :! python3 build.py debug
command Browse :! open notes/%:t:r.html

" system

command SudoSave :w !sudo tee > /dev/null %

" swap ; and :

nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;

" swap j and k (for colemak layout)

nnoremap j k
vnoremap j k
nnoremap k j
vnoremap k j

" swap r and <C-r>

nnoremap r <C-r>
vnoremap r <C-r>
nnoremap <C-r> r
vnoremap <C-r> r

" activate FZF

nnoremap <C-t> :FZF<CR>

