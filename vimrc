"Needs to come before enabeling auto type
call pathogen#infect()

set showcmd
set backupdir=~/tmp,/tmp,.
set directory=~/tmp,/tmp,.
set number
set ignorecase
set smartcase  "case insensative unless an upper case letter is entered in search string
set incsearch
set cindent

"From tagbar
nmap <F8> :TagbarToggle<CR>

"to read output of gem 'guard-ctags-bundler'
set tags+=gems.tags

"makes command-t start up faster on first listing
set wildignore+=.git,tmp/cache

"set cuc
"set cul

au FileType ruby    setlocal sts=2 sw=2 expandtab
au FileType haml    setlocal sts=2 sw=2 expandtab
au FileType html    setlocal sts=2 sw=2 expandtab
au FileType scss    setlocal sts=2 sw=2 expandtab
au FileType sass    setlocal sts=2 sw=2 expandtab
au FileType css     setlocal sts=2 sw=2 expandtab

au FileType feature setlocal sts=2 sw=2 expandtab

" http://vim.wikia.com/wiki/Auto_save_files_when_focus_is_lost
au FocusLost * silent! wa

colorscheme koehler

let mapleader = ","
map <leader>f :NERDTreeToggle<cr>
