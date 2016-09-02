silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

colorscheme elflord
":set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set mouse=v
:set rnu	    "show relative rownum
:set nu		    "show line number

:set tabstop=4 shiftwidth=4 expandtab


map <silent> <F3> :call BufferList()<CR>
" not needed
"map ic :s/^/#/g<CR>:let @/ = ""<CR>
"map rc :s/^#//g<CR>:let @/ = ""<CR>


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
