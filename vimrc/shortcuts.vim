" .vimrc.d

command RCe :vsp ~/.vimrc.d/editor.vim
command RCp :vsp ~/.vimrc.d/plugins.vim
command RCpc :vsp ~/.vimrc.d/plugins-config.vim
command RCs :vsp ~/.vimrc.d/shortcuts.vim

" tex

command BL :! latex % && dvipdfmx %:r
command BPL :! platex % && dvipdfmx %:r
command BXL :! xelatex %

command CL :! rm %:r.aux %:r.log %:r.out %:r.dvi %:r.pdf

command OpenPDF :! open %:r.pdf

command Jmath :%s/。/．/g | %s/、/，/g

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
