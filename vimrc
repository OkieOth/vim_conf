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
:set hidden
:set switchbuf=newtab



map <silent> <F3> :call BufferList()<CR>
map ic :s/^/#/g<CR>:let @/ = ""<CR>
map rc :s/^#//g<CR>:let @/ = ""<CR>

filetype plugin indent on
"set omnifunc=syntaxcomplete#Complete

" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let notabs = 0
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

    


