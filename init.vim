" Plugin List
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
" Plug 'neoclide/coc.nvim', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'hashivim/vim-packer'
Plug 'hashivim/vim-vagrant'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-consul'
Plug 'vim-scripts/vim-gtest'
Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'valloric/youcompleteme'
Plug 'vim-ruby/vim-ruby'
Plug 'ekalinin/dockerfile.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'vim-scripts/vim-Support'
Plug 'chr4/nginx.vim'
Plug 'jparise/vim-graphql'
Plug 'stephpy/vim-yaml'
Plug 'skanehira/docker-compose.vim'
Plug 'pprovost/vim-ps1'
Plug 'andrewstuart/vim-kubernetes'
Plug 'tpope/vim-haml'
" Plug 'vim-scripts/AutoComplPop'
" Plug 'ryanoasis/vim-devicons'
Plug 'chr4/nginx.vim'
Plug 'janko/vim-test'
Plug 'golang/lint'
Plug 'pearofducks/ansible-vim'
Plug 'rodjek/vim-puppet'
Plug 'vadv/vim-chef'
Plug 'https://github.com/m-kat/aws-vim'
Plug 'davidhalter/jedi-vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'flazz/vim-colorschemes'
Plug 'fatih/vim-go'
Plug 'vim-syntastic/syntastic'
Plug 'lifepillar/pgsql.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

filetype plugin indent on
filetype on
filetype off

syntax on
set number
set relativenumber
set autoindent
set autowrite
set expandtab
set shiftwidth=2
set showtabline=2
set ignorecase
set nobackup
set list
set encoding=utf-8
set complete+=kspell
set completeopt=menuone,longest
set matchpairs+=<:>
set hidden
set hlsearch
set autoread
" set cursorline
set splitbelow
set splitright
set showcmd
set showmatch
set smartcase
set incsearch
set regexpengine=1
set wrap
set showmode
set wildmode=full
set wildmenu
set mouse=a
set wildmode=longest,list,full
set splitbelow
set splitright

set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim

let g:airline#extensions#branch#enabled = 1
" let g:airline_powerline_fonts = 1
let g:airline_theme = 'term'
" let g:acp_behaviorPerlOmniLength = 0
let g:airline#extensions#tabline#enabled = 1
let g:multi_cursor_warning = 0
let g:multi_cursor_start_word_key = '<C-n>'
let g:multi_cursor_quit_key = '<Esc>'
let g:puppet_align_hashes = 0
let g:AWSVimValidate = 1
" let g:jedi#auto_initialization = 0
" let g:jedi#auto_vim_configuration = 0
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0
" let g:jedi#show_call_signatures = "1"
" let g:jedi#goto_command = "<leader>d"
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_stubs_command = "<leader>s"
" let g:jedi#goto_definitions_command = ""
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"
" let g:jedi#completions_enabled = 0
let g:coc_disable_startup_warning = 1

" Hashicorp Tools Configure
" Terraform
let g:terraform_align = 1
let g:terraform_fold_sections = 1
let g:terraform_fmt_on_save = 1

" Syntastic configure
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Theme / Colorscheme
colorscheme default
set background=dark

" functions
fun! GetSnipsInCurrentScope()
 let snips = {}
  for scope in [bufnr('%')] + split(&ft, '\.') + ['_']
    call extend(snips, get(s:snippets, scope, {}), 'keep')
    call extend(snips, get(s:multi_snips, scope, {}), 'keep')
  endfor
  return snips
endf

" Terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1

let g:acp_behaviorSnipmateLength = 1
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
let g:SuperTabContextDefaultCompletionType = "<c-p>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabLongestEnhanced = 1

" Golang
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"

au filetype go inoremap <buffer> . .<C-x><C-o>

" Mapping Keyboard
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-R>:update<CR>
inoremap <silent> <C-S> <C-E> :update<CR>
map <silent> <C-q> :NERDTreeToggle<CR>
map <silent> <C-h> :terminal<CR>
map <silent> <S-z> :wq<CR>
map <silent> <S-c> dd<CR>
map <silent> <S-v> p<CR>
map <silent> <C-z> u<CR>
" map <silent> <C-v> :vsp<CR>
map <silent> <S-e> :split<CR>
nmap <silent> <C-t> :tabnew<CR>
nmap <silent> <S-O> :tabnext<CR>
nmap <silent> <S-I> :tabprevious<CR>
nmap <silent> <C-l> :tabclose<CR>
nmap <silent> <C-c> :checkhealth<CR>

autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow
autocmd FileType ruby,eruby set filetype=ruby.eruby.chef
autocmd FileType json syntax match Comment +\/\/.\+$+

" Coc (Autocomplete configure)
"let g:coc_global_extensions = [
"  \ 'coc-snippets',
"  \ 'coc-clangd',
" \ 'coc-cmake',
"  \ 'coc-git',
"  \ 'coc-go',
"  \ 'coc-java',
"  \ 'coc-json',
"  \ 'coc-powershell',
"  \ 'coc-python',
"  \ 'coc-sh',
"  \ 'coc-solargraph',
"  \ 'coc-sql',
"  \ 'coc-tsserver',
"  \ 'coc-yaml',
"  \ 'coc-html',
"  \ 'coc-css',
"  \ 'coc-pairs',
"  \ 'coc-angular',
"  \ 'coc-elixir',
"  \ 'coc-eslint',
"  \ 'coc-stylelint',
"  \ 'coc-vimlsp',
"  \ 'coc-xml'
"  \ 'coc-erlang-ls'
"]

set signcolumn=yes

" TextEdit might fail if hidden is not set.
" set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>



