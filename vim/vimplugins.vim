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
Plugin 'VundleVim/Vundle.vim'               " Vundle itself
"Plugin 'vimwiki/vimwiki'

" Vim Interface Plugins
Plugin 'tpope/vim-obsession'                " session autosave
Plugin 'scrooloose/nerdtree'                " File explorer
Plugin 'vim-airline/vim-airline'            " Status bar
Plugin 'vim-airline/vim-airline-themes'     " Status bar themes
Plugin 'majutsushi/tagbar'                  " Tagbar
Plugin 'kien/ctrlp.vim'                     " Fuzzy file finder
Plugin 'morhetz/gruvbox'                    " Color scheme
Plugin 'nathanaelkane/vim-indent-guides'    " Indent guides

" Integration Plugins
Plugin 'tpope/vim-fugitive'                 " [Git] integration
Plugin 'christoomey/vim-tmux-navigator'     " [Tmux] navigation integration
Plugin 'tmux-plugins/vim-tmux-focus-events' " [Tmux] focus events
Plugin 'roxma/vim-tmux-clipboard'           " [Tmux] clipboard share
Plugin 'wakatime/vim-wakatime'              " [Wakatime] integration

" Vim Editing Plugins
Plugin 'tpope/vim-surround'                 " Tools to deal with surroundings
Plugin 'godlygeek/tabular'                  " Align text

" Vim Language Plugins
Plugin 'dense-analysis/ale'                 " [General] linting engine
Plugin 'heavenshell/vim-pydocstring'        " [Python] docstring generator
Plugin 'plasticboy/vim-markdown'            " [Markdown] syntax highlighting
Plugin 'bfrg/vim-cpp-modern'                " [C++] modern syntax highlighting
"Plugin 'davidhalter/jedi-vim'
"Plugin 'JamshedVesuna/vim-markdown-preview'
"Plugin 'jceb/vim-orgmode'
"Plugin 'gabrielelana/vim-markdown'
"Plugin 'szymonmaszke/vimpyter'
"Plugin 'vim-syntastic/syntastic'  " Deprecated
"Plugin 'tabnine/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

