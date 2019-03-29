"Basic Macros
map! {} {}<ESC>i<ENTER><ESC>O
map! <> <><ESC>i
map! "" ""<ESC>i

" C/C++ macros
autocmd FileType c,cpp map! \i #include <>
autocmd FileType c,cpp map! \m int main(){}
autocmd FileType c,cpp map! \c class {<ENTER>}<ESC>k$i
autocmd FileType c,cpp map! \u using namespace std;<ESC>o
autocmd FileType c,cpp map! \fd /*<ENTER>*/<ESC>

nmap :Q :q!
nmap :Wq :wq
nmap :W :w

" file buffer change
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

" Navigate Splits
" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
" nnoremap <c-l> <c-w>l
" nnoremap <c-h> <c-w>h

