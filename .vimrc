set nocompatible
set backspace=2

"Enable filetypes
filetype on
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Colors
syntax on
set t_Co=256
set background=dark
colorscheme vibrantink

"Fast saving
map <leader>w :w!<CR>

"Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
map <leader>, :tabprevious<CR>
map <leader>. :tabnext<CR>
map <leader>= :tabnew<CR>
map <leader>- :tabclose<CR>

"Show command in bottom right portion of the screen
set showcmd

"Show line numbers
set number

"Allow mouse
set mouse=a

"Indent
set smartindent
set autoindent

"Highlight search
set hlsearch

"Set incremental searching
set incsearch

"Case insensitive search
set ignorecase
set smartcase

"Show matching brackets when text indicator is over them
set showmatch

" Show trailing spaces
set list listchars=tab:»·,trail:·

"Clear search highlighting
map <leader>' :let @/ = ""<CR>

"Pathogen
call pathogen#infect()

"NERDTREE
map <C-e> :NERDTreeToggle<cr>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"Fuzzy finder
map <leader>F :FufFile<CR>
map <leader>f :FufCoverageFile<CR>
map <leader>s :FufTag<CR>
map <leader>r :FufRenewCache<CR>
