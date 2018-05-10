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

"Fast closing
map <leader>b :bd<CR>
map <leader>B :bufdo bd<CR>

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
set ruler

" Disable folding
set nofoldenable

"Show line numbers
set number
"Toggle show line numbers
nnoremap <Leader>N :set nu!<cr>
"Toggle relative line numbers
nnoremap <silent><leader>n :set relativenumber!<cr>

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

"Show trailing spaces
set list listchars=tab:»·,trail:·

"Clear search highlighting
nmap <leader>' :let @/ = ""<CR>

"Toggle between paste mode
nnoremap <Leader>p :set paste!<cr>

"Close all splits except current
nnoremap <Leader>o :only<cr>

" _ : Quick horizontal splits
nnoremap _ :sp<cr>

" | : Quick vertical splits
nnoremap <bar> :vsp<cr>

"Pathogen
execute pathogen#infect()

"NERDTREE
nmap <C-e> :NERDTreeToggle<cr>
nmap <leader>g :NERDTreeFind<CR>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"CtrlP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
nmap <leader>f :CtrlP<CR>
"Use ag for indexing
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"visible active buffers
hi StatusLine cterm=NONE ctermbg=darkgreen ctermfg=black gui=bold guibg=green guifg=black
hi StatusLineNC cterm=NONE ctermbg=darkgray ctermfg=lightgray gui=bold guibg=black guifg=lightgray

"format entire file (going back to the original cursor location)
nmap <Leader>fef ggVG=``

"Go to end of line in insert mode
inoremap <c-e> <esc>A

"Go to beginning of line in insert mode
inoremap <c-a> <esc>I

" Don't exit multiple cursors when escaping out of insert mode
let g:multi_cursor_exit_from_insert_mode = 0

" Support Flow types
let g:javascript_plugin_flow = 1

" Support .js files with vim-jsx
let g:jsx_ext_required = 0
