"Settings
set relativenumber
set nocompatible     " 오리지날 VI와 호환하지 않음
set autoindent       " 자동 들여쓰기
set cindent          " C 프로그래밍용 자동 들여쓰기
set smartindent      " 스마트한 들여쓰기
set wrap
set nowrapscan       " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup         " 백업 파일을 안만듬
"set noswapfile
"set visualbell      " 키를 잘못눌렀을 때 화면 프레시
set ruler            " 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set number           " 행번호 표시, set nu 도 가능
set fencs=ucs-bom,utf-8,euc-kr.latin1 " 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fileencoding=utf-8 " 파일저장인코딩
set tenc=utf-8       " 터미널 인코딩
set hlsearch         " 검색어 강조, set hls 도 가능
set ignorecase       " 검색시 대소문자 무시, set ic 도 가능
set lbr
set incsearch        " 키워드 입력시 점진적 검색
set cursorline       " 편집 위치에 커서 라인 설정
set laststatus=2     " 상태바 표시를 항상한다
set smartcase

nnoremap <CR> :nohlsearch<cr>


syntax on "  구문강조 사용
set background=dark  " 하이라이팅 lihgt / dark
"colorscheme jellybeans  "  vi 색상 테마 설정
set backspace=eol,start,indent "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000     " vi 편집기록 기억갯수 .viminfo에 기록
highlight Comment term=bold cterm=bold ctermfg=4 " 코멘트 하이라이트
set mouse=a          " vim에서 마우스 사용
set t_Co=256         " 색 조정

" Indentation setting
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

" Navigate Splits
" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
" nnoremap <c-l> <c-w>l
" nnoremap <c-h> <c-w>h

set backspace=indent,eol,start
set fileformat=unix

set clipboard=unnamed

syn on
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au BufNewFile,BuffilePre,BufRead *.md map! .hyp []()<ESC>2hi
au BufNewFile,BuffilePre,BufRead *.md map! .img ![]()<ESC>2hi
au BufNewFile,BuffilePre,BufRead *.md map! .eqn $$<ENTER>\begin{aligned}<ENTER>\end{aligned}<ENTER>$$<ESC>kO
au BufNewFile,BuffilePre,BufRead *.md map! \udb \underbar{

set autochdir "Automatically change directory to current working directory.

"Dictionary
set dictionary=/usr/share/dict/words

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


" Vim-Markdown Related
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_folding_disabled = 1
