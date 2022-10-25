call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'pineapplegiant/spaceduck', {'branch': 'main'}
call plug#end()

" Basic Configuration
set autoindent
set autoread
set autowrite
set cmdheight=2
set complete+=kspell
set completeopt=menuone,longest
set encoding=utf-8
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set list
set matchpairs+=<:>
set mouse=a
set nobackup
set nowritebackup
set number
set regexpengine=1
set relativenumber
set shiftwidth=2
set shortmess+=c
set showcmd
set showmatch
set showmode
set showtabline=2
set signcolumn=yes
set smartcase
set splitbelow
set splitbelow
set splitright
set splitright
set updatetime=300
set wildmenu
set wildmode=full
set wildmode=longest,list,full
set wrap

syntax on

filetype plugin indent on
filetype on
filetype off

" Configuring theme
set background=dark
"colorscheme spaceduck


" Coc (Autocomplete configure)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<CR>" : "\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<CR>" : "\<CR>"
endif  


