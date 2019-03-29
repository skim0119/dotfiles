set nocompatible
filetype plugin on
syntax on

"==========================================================================="
" Airline
"==========================================================================="
"g:airline_theme='simple'

"==========================================================================="
" Tabular
"==========================================================================="
map :Tab :Tabular

"==========================================================================="
" VimWiki with markdown support
" helppage -> :h vimwiki-syntax 
"==========================================================================="
let g:vimwiki_list = [{'path': '$HOME/Desktop/Dropbox/Notes', 'path_html':'$HOME/Desktop/Dropbox/Notes_html', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
autocmd BufEnter,BufRead,BufNewFile *.md set filetype=markdown
"autocmd bufEnter,BufRead,BufNewFile index.md set filetype=vimwiki
let g:vimwiki_folding=''
"let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

"==========================================================================="
" vim-instant-markdown - Instant Markdown previews from Vim
" https://github.com/suan/vim-instant-markdown
"==========================================================================="
let g:instant_markdown_autostart = 0	" disable autostart
map <leader>md :InstantMarkdownPreview<CR>
"let vim_markdown_preview_github=1
let vim_markdown_preview_pandoc=1
let vim_markdown_preview_browser='Google Chrome'

"==========================================================================="
" Jedi vim python autocomplete plugin
" https://github.com/davidhalter/jedi-vim
"==========================================================================="
let g:jedi#auto_initialization = 0
let g:jedi#completions_command = "<D-k>"

"==========================================================================="
" Vim Org-mode
"==========================================================================="
let g:org_aggressive_conceal = 0
"
"
"==========================================================================="
" Tagbar Majutsushi
" https://github.com/majutsushi/tagbar 
"==========================================================================="


"==========================================================================="
" vim-Pydocstring
" https://github.com/heavenshell/vim-pydocstring
"==========================================================================="
nmap <silent> <C-_> <Plug>(pydocstring)
let g:pydocstring_templates_dir = '~/pydocstring'

"==========================================================================="
" Control-P Fuzzy Finder
" https://github.com/kien/ctrlp.vim
"==========================================================================="
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"==========================================================================="

let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }


" Plugin Shortucts
" <F1> 
map <F1> :make<cr>
" <F2> NERDTree
map <F2> :NERDTreeToggle<cr>
" <F3> Tagbar Toggle
nmap <F3> :TagbarToggle<cr>
" <F5> [i 정의 내용 보여주기
map <F5> [i
" <F6> gd 변수 선언으로 이동
map <F6> gd
" <F7> shell
map <F7> :VimShell<cr>
" <F8> Dox
map <F8> :Dox<cr>
"" bnext, bprev
map <F11> :bp<cr>
map <F12> :bn<cr>
" tabn
"map <S-Tab> gt<cr>
" bnext
"map <S-F1> :bnext<cr>
