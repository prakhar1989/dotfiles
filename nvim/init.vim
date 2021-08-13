call plug#begin('~/.vim/plugged')
  Plug 'tomasiser/vim-code-dark'
  Plug 'pangloss/vim-javascript'
  Plug 'sbdchd/neoformat'
  Plug 'szw/vim-maximizer'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'kassio/neoterm'
  Plug 'itchyny/lightline.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'itchyny/vim-gitbranch'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

" default options
set completeopt=menu,menuone,noselect " better autocomplete options
set mouse=a " if I accidentally use the mouse
set splitright " splits to the right
set splitbelow " splits below
set expandtab " space characters instead of tab
set tabstop=2 " tab equals 2 spaces
set shiftwidth=2 " indentation
set number " show absolute line numbers
set ignorecase " search case insensitive
set smartcase " search via smartcase
set incsearch " search incremental
set diffopt+=vertical " starts diff mode in vertical split
set hidden " allow hidden buffers
set nobackup " don't create backup files
set nowritebackup " don't create backup files
set cmdheight=1 " only one line for commands
set shortmess+=c " don't need to press enter so often
set signcolumn=yes " add a column for sings (e.g. LSP, ...)
set updatetime=520 " time until update
set undofile " persists undo tree
filetype plugin indent on " enable detection, plugins and indents
let mapleader = " " " space as leader key
if (has("termguicolors"))
  set termguicolors " better colors, but makes it sery slow!
endif
let g:netrw_banner=0 " disable banner in netrw
let g:netrw_liststyle=3 " tree view in netrw
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " syntax highlighting in markdown
nnoremap <leader>v :e $MYVIMRC<CR>

"mapping leader
let mapleader = ','

" szw/vim-maximizer
nnoremap <silent> <C-w>m :MaximizerToggle!<CR>

" sbdchd/neoformat
nnoremap <leader>F :Neoformat prettier<CR>

"Typo checks
iabbrev teh the
iabbrev adn and
iabbrev funciton function
iabbrev functoin function
iabbrev fucntion function

" tomasiser/vim-code-dark
colorscheme codedark

" kassio/neoterm
let g:neoterm_default_mod = 'vertical'
let g:neoterm_autoinsert = 1
let g:neoterm_autoscroll = 1
let g:neoterm_term_per_tab = 1
nnoremap <c-y> :Ttoggle<CR>
inoremap <c-y> <Esc>:Ttoggle<CR>
tnoremap <c-y> <c-\><c-n>:Ttoggle<CR>

" junegunn/fzf.vim
nnoremap <leader><space> :GFiles<CR>
nnoremap <leader> ff :Rg<CR>

" tpope/vim-fugitive
nnoremap <leader>gg :G<CR>
