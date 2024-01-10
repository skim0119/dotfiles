" Plugins (Vundle)
set nocompatible              " be iMproved, required
set shell=/bin/bash
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Keep Plugin commands between vundle#begin/end.
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'vimwiki/vimwiki'
Plugin 'majutsushi/tagbar'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'JamshedVesuna/vim-markdown-preview'
"Plugin 'jceb/vim-orgmode'
"Plugin 'gabrielelana/vim-markdown'
"Plugin 'szymonmaszke/vimpyter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'roxma/vim-tmux-clipboard'
Plugin 'tpope/vim-fugitive'
"Plugin 'vim-syntastic/syntastic'  " Deprecated
Plugin 'tpope/vim-obsession'
Plugin 'wakatime/vim-wakatime'
"Plugin 'tabnine/YouCompleteMe'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'morhetz/gruvbox'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

