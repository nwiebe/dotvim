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
" cd ~/.vim/bundle/Command-T/ruby/command-t
" rvm use system
" ruby ruby/command-t/extconf.rb
" make

Plugin 'scrooloose/nerdtree'

Plugin 'majutsushi/tagbar'

Plugin 'vim-scripts/YankRing.vim'

Plugin 'surround.vim'
" cs<old><new>

Plugin 'vim-indent-object'
"v ii <repeate ii>

Plugin 'kchmck/vim-coffee-script'

Plugin 'elzr/vim-json'

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
set number
nnoremap <leader>t :CommandT<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>
map <F8> :TagbarToggle<CR>

syntax enable

