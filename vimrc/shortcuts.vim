" .vimrc.d

command Settings :vsp $DOTFILES/vimrc/editor.vim
command SettingsPlugin :vsp $DOTFILES/vimrc/plugins.vim
command SettingsPluginConfig :vsp $DOTFILES/vimrc/plugins-config.vim
command SettingsShortcuts :vsp $DOTFILES/vimrc/shortcuts.vim

" tex

command BuildL :! latex % && dvipdfmx %:r
command BuildP :! platex % && dvipdfmx %:r
command BuildX :! xelatex %

command ClearTeX :! rm %:r.aux %:r.log %:r.out %:r.dvi %:r.pdf

command OpenPDF :! open %:r.pdf
command Open :! open %
command PBcopy :! cat % | pbcopy

" swap ; and :

nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;

" swap j and k

nnoremap j k
vnoremap j k
nnoremap k j
vnoremap k j

