set nocompatible
filetype plugin on
syntax on

"==========================================================================="
" Airline
"==========================================================================="
let g:airline_theme="base16"

"==========================================================================="
" Tabular
"==========================================================================="
map :Tab :Tabular

"==========================================================================="
" VimWiki with markdown support
" helppage -> :h vimwiki-syntax
"==========================================================================="
" let g:vimwiki_list = [{'path': '$HOME/Desktop/Dropbox/Notes', 'path_html':'$HOME/Desktop/Dropbox/Notes_html', 'syntax': 'markdown', 'ext': '.md'}]
" let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" autocmd BufEnter,BufRead,BufNewFile *.md set filetype=markdown
"autocmd bufEnter,BufRead,BufNewFile index.md set filetype=vimwiki
" let g:vimwiki_folding=''
"let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
" let g:vimwiki_conceal=0
" g:vimwiki_global_ext = 0

"==========================================================================="
" vim-instant-markdown - Instant Markdown previews from Vim
" https://github.com/suan/vim-instant-markdown
"==========================================================================="
let g:instant_markdown_autostart = 0	" disable autostart
map <leader>md :InstantMarkdownPreview<CR>
"let vim_markdown_preview_github=1
let vim_markdown_preview_pandoc=1
let vim_markdown_preview_browser='Google Chrome'

let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_folding_disabled = 1

let g:vim_markdown_conceal=0
let g:vim_markdown_conceal_code_blocks=0

"==========================================================================="
" Jedi vim python autocomplete plugin
" https://github.com/davidhalter/jedi-vim
"==========================================================================="
let g:jedi#auto_initialization = 0
let g:jedi#completions_command = "<D-k>"
let g:jedi#auto_close_doc = 0

let g:jedi#use_tabs_not_buffers = 0  " use buffers instead of tabs
let g:jedi#show_call_signatures = "1"
let g:jedi#goto_command = "<localleader>gt"
let g:jedl#goto_assignments_command = "<localleader>ga"
let g:jedi#goto_definitions_command = "<localleader>gg"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<localleader>u"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

"==========================================================================="
" Vim Org-mode
"==========================================================================="
let g:org_aggressive_conceal = 0

"==========================================================================="
" Tagbar Majutsushi
" https://github.com/majutsushi/tagbar
"==========================================================================="
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }

"==========================================================================="
" vim-markdown
"==========================================================================="
let g:vim_markdown_conceal=0

"==========================================================================="
" vim-Pydocstring
" https://github.com/heavenshell/vim-pydocstring
"==========================================================================="
nmap <silent> <C-_> <Plug>(pydocstring)
let g:pydocstring_formatter = 'numpy'
" let g:pydocstring_templates_dir = '~/.dotfiles/vim/pydocstring'
let g:pydocstring_doq_path = '/Users/skim0119/miniconda3/bin/doq'

"==========================================================================="
" Control-P Fuzzy Finder
" https://github.com/kien/ctrlp.vim
"==========================================================================="
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"==========================================================================="

"==========================================================================="
" Vim Syntastic
" https://github.com/vim-syntastic/syntastic#faqpython"
"==========================================================================="
"set statusline+=%#warningmsg#
"set statusline += %{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_flake8_post_args='--ignore=E501,E221,F401,W503,E203'
let g:syntastic_python_checkers=['flake8']

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["rst", "markdown"] }
"==========================================================================="

"==========================================================================="
" YouCompleteMe
" https://github.com/ycm-core/YouCompleteMe#semantic-information-commands
"==========================================================================="
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
"==========================================================================="

"==========================================================================="
" vim-cpp-modern
"==========================================================================="
" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 0

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1
"==========================================================================="

"==========================================================================="
" morhetz/gruvbox (Theme)
"==========================================================================="
autocmd vimenter * ++nested colorscheme gruvbox

"==========================================================================="
" nathanaelkane/vim-indent-guides
"==========================================================================="
let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"==========================================================================="
" ALE
"==========================================================================="
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['autoflake', 'black'],
\}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:ale_python_flake8_options = '--config=$HOME/.dotfiles/flake8'

"==========================================================================="
" github/copilot
"==========================================================================="
"
let g:copilot_filetypes = {'gitcommit': v:true, 'markdown': v:true, 'yaml': v:true }
autocmd BufReadPre *
     \ let f=getfsize(expand("<afile>"))
     \ | if f > 100000 || f == -2
     \ | let b:copilot_enabled = v:false
     \ | endif
