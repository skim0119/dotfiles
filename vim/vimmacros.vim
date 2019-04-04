"Basic Macros
nmap :Q :q!
nmap :Wq :wq
nmap :W :w

" C/C++ macros
autocmd FileType c,cpp map! {} {}<ESC>i<ENTER><ESC>O
autocmd FileType c,cpp map! <> <><ESC>i
autocmd FileType c,cpp map! "" ""<ESC>i

autocmd FileType c,cpp map! \i #include <>
autocmd FileType c,cpp map! \m int main(){}
autocmd FileType c,cpp map! \c class {<ENTER>}<ESC>k$i
autocmd FileType c,cpp map! \u using namespace std;<ESC>o
autocmd FileType c,cpp map! \fd /*<ENTER>*/<ESC>

" File buffer change
map ,1 :b!1<CR>
map ,2 :b!2<CR>
map ,3 :b!3<CR>
map ,4 :b!4<CR>
map ,5 :b!5<CR>
map ,6 :b!6<CR>
map ,7 :b!7<CR>
map ,8 :b!8<CR>
map ,9 :b!9<CR>
map ,0 :b!0<CR>

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Navigate Splits (Included in plugin)
" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
" nnoremap <c-l> <c-w>l
" nnoremap <c-h> <c-w>h

" Plugin Panel Toggle
" <F1> 
" map <F1> :make<cr>
" <F2> NERDTree
map <F2> :NERDTreeToggle<cr>
" <F3> Tagbar Toggle
nmap <F3> :TagbarToggle<cr>
" <F4>
" <F5> 
" <F6> gd 변수 선언으로 이동
map <F6> gd
" <F7> 
" <F8> 
"" bnext, bprev
map <F11> :bp<cr>
map <F12> :bn<cr>
" tabn
"map <S-Tab> gt<cr>
" bnext
"map <S-F1> :bnext<cr>

" Markdown Shortcut/Macros
syn on
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au BufNewFile,BuffilePre,BufRead *.md map! .hyp []()<ESC>2hi
au BufNewFile,BuffilePre,BufRead *.md map! .img ![]()<ESC>2hi
au BufNewFile,BuffilePre,BufRead *.md map! .eqn $$<ENTER>\begin{aligned}<ENTER>\end{aligned}<ENTER>$$<ESC>kO
au BufNewFile,BuffilePre,BufRead *.md map! \udb \underbar{


" Overlength color
autocmd FileType python highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd FileType python match OverLength /\%120v.\+/

" Python Customization: color self
augroup PythonCustomization
  " highlight python self, when followed by a comma, a period or a parenth
   autocmd FileType python syn match pythonStatement "\(\W\|^\)\@<=self\([\.,)]\)\@="
augroup END
