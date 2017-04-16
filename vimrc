silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

syntax on

colorscheme elflord
":set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set mouse=v
:set rnu	    "show relative rownum
:set nu		    "show line number

let g:SuperTabCrMapping=1

:set tabstop=4 shiftwidth=4 expandtab
:set hidden
:set switchbuf=newtab

:nmap <c-h> b
:nmap <c-s-h> B
:nmap <c-l> w
:nmap <c-s-l> W
:nmap <c-j> }
:nmap <c-k> {

:vmap <c-h> b
:vmap <c-s-h> B
:vmap <c-l> w
:vmap <c-s-l> W
:vmap <c-a> ^
:vmap <c-e> $
:vmap <c-j> }
:vmap <c-k> {

:highlight LineNr ctermfg=darkgrey


map <silent> <F3> :call BufferList()<CR>
" not needed
"map ic :s/^/#/g<CR>:let @/ = ""<CR>
"map rc :s/^#//g<CR>:let @/ = ""<CR>

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

let delimitMate_expand_cr=1    

" CtrlP - start
" Use <leader>t to open ctrlp
 let g:ctrlp_map = '<leader>t'
" " Ignore these directories
set wildignore+=*/build/**
set wildignore+=*/target/**
" " disable caching
" let g:ctrlp_use_caching=0
" CtrlP - ende

" allow xml format for xml files with input gg=G
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

let g:jsx_ext_required = 0

set laststatus=2

" typescript
autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = '--jsx react'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" vim-js-pretty-template
autocmd FileType typescript syn clear foldBraces

" tsuquyomi
map <silent> <F5> : TsuGeterr<CR>
map <silent> <s-F5> : ccl<CR>
autocmd FileType typescript setlocal completeopt-=menu

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

