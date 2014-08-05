set nocompatible              " be iMproved, required
filetype off                  " required

" To install vundle
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'

Plugin 'wincent/Command-T'
" sudo apt-get install ruby-dev
" rvm use system
" cd ~/.vim/bundle/Command-T/ruby/command-t
" ruby extconf.rb
" make

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'majutsushi/tagbar'

Plugin 'vim-scripts/YankRing.vim'

Plugin 'surround.vim'
" cs<old><new>

Plugin 'vim-indent-object'
"v ii <repeate ii>

Plugin 'kchmck/vim-coffee-script'

Plugin 'elzr/vim-json'

Plugin 'bling/vim-airline'

Plugin 'mileszs/ack.vim'

Plugin 'vim-scripts/dbext.vim'
":DBCompleteTables
"put cursor on table name, then <leader>sdt
"s - sql, d - describe, t - table
"s - sql, e - execute,  l - line
"insert mode - ctrl-X ctrl-P
"
Plugin 'yegappan/mru'

Plugin 'tomtom/tcomment_vim'
" gcc :: toggle comment current line
" gc{motion} :: toggle comment {motion}
" gC{motion} :: comment {motion}
"
" visual 
" gc :: toggle comment
" gC :: comment

Plugin 'valloric/youcompleteme'
"cd ~/.vim/bundle/youcompleteme
"./install.sh --clang-completer

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let mapleader = ","
syntax enable

"CommandT
nnoremap <leader>t :CommandT<CR>
set wildignore+=.git,tmp

"NerdTree
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>

"Tagbar
map <F8> :TagbarToggle<CR>

"read output of gem 'guard-ctags-bundler'
set tags+=gems.tags

" Plugin 'yegappan/mru'
nnoremap <leader>m :MRU<CR>

au FileType ruby    setlocal sts=2 sw=2 expandtab
au FileType haml    setlocal sts=2 sw=2 expandtab
au FileType html    setlocal sts=2 sw=2 expandtab
au FileType scss    setlocal sts=2 sw=2 expandtab
au FileType sass    setlocal sts=2 sw=2 expandtab
au FileType css     setlocal sts=2 sw=2 expandtab
au FileType coffee  setlocal sts=2 sw=2 expandtab
au FileType feature setlocal sts=2 sw=2 expandtab

" http://vim.wikia.com/wiki/Auto_save_files_when_focus_is_lost
au FocusLost * silent! wa


"Plugin 'elzr/vim-json'
nnoremap <leader>j :%!python -m json.tool<CR>

colorscheme koehler

set showcmd
set backupdir=~/tmp,/tmp/,.
set directory=~/tmp,/tmp/,.
set number
set ignorecase
set smartcase
set incsearch
set scrolloff=5
set hlsearch

if filereadable($HOME."/.vim_dbext_connection_profiles")
	source ~/.vim_dbext_connection_profiles
endif
"contains lines like: 
"let g:dbext_default_profile_example = 'type=MYSQL:user=xxx:host=yyy:port=3306:dbname=nnn'
"Then in you .sql file reference it in a comment
" //dbext:example
" run sql with <leader>sel
