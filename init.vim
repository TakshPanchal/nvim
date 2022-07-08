"Options
set exrc
" set guicursor= "set cursor to a block in Insert mode
set nu "show current line no.
set nohlsearch
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse-=a
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set colorcolumn=80
set signcolumn=yes

" Tab size
set expandtab
set shiftwidth=4
set tabstop=4

" Color Support
" set t_col=256

if $TERM !=? 'xterm-256color'
  set termguicolors
endif

" Support for true italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" File browser
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=25
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'
" Templates 
:au BufNewFile *.cpp r ~/.config/nvim/cpp_template.cpp
" Plugins
call plug#begin()
  " Appearance
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'gruvbox-community/gruvbox'
  " Utilities
  Plug 'jiangmiao/auto-pairs'
"  Plug 'ap/vim-css-color'
  Plug 'preservim/nerdtree'
  Plug 'sheerun/vim-polyglot'

  " Completion / linters / formatters
  Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'plasticboy/vim-markdown'
  
  " Git
  Plug 'airblade/vim-gitgutter'
  " Telscope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Language server
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile'

colorscheme gruvbox

" Normal mode bindings
nnoremap <C-q> :q!<CR>

