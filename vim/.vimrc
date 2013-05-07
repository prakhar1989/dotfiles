"Use Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Typo checks
iabbrev teh the
iabbrev adn and
iabbrev funciton function
iabbrev functoin function
iabbrev fucntion function

set nocompatible
set laststatus=2
syntax enable
set modelines=0
set encoding=utf-8
filetype plugin indent on
filetype plugin on

"Powerline settings
"let g:Powerline_symbols = 'fancy'

"Bind :Q and :W to :q and :w respectively
command! Q q
command! W w

"switch off the bell
set visualbell t_vb=
set novisualbell

"better mapping for esc
imap jk <ESC>

"better use of space in normal mode
nnoremap <space> viw

"better use of H and L
nnoremap H ^
nnoremap L $

"mapping leader
let mapleader = ','

"" ultisnips
let g:UltiSnipsExpandTrigger="<leader>p"
let g:UltiSnipsJumpForwardTrigger="<Down>"
let g:UltiSnipsListSnippets="<Right>"

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

"editing
set ruler                       " show the co-ordinates of the cursor
set cursorline                  " highlight the line with the cursor
set scrolloff=3                 " provide some context for editing 
set number

"" Whitespace
set nowrap                      " dont wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " except when you tell vim 
set gdefault                    " g flag is set on default

" clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr> 

"" Look
set background=dark
set guifont=Ubuntu\ Mono\ For\ Powerline\ 11
if has('gui_running')
  set guioptions-=T
  set guioptions-=R
  set guioptions-=r
  set guioptions-=L
  set guioptions-=l
  set guioptions-=m
  colorscheme base16-tomorrow
else
  set t_Co=256
  colorscheme mustang
endif

"" Commands
source $VIMRUNTIME/mswin.vim    "allows standard windows copy/paste keystrokes
behave mswin                    "mouse behavior like windows

function Writing()
  set wrap
  set linebreak
endfunction

"read .ru files as rb
au BufNewFile,BufRead *.ru set filetype=ruby

"customizing the insert menu
"http://goo.gl/UqCSV
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" editing vimrc in a jiffy
" source $MYVIMRC reloads the saved $MYVIMRC
nnoremap <Leader><Leader>s :source $MYVIMRC
" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
nnoremap <Leader><Leader>v :e $MYVIMRC

"NERD Tree 
let NERDTreeShowBookmarks  = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
map <leader>n :NERDTreeToggle <cr>

"ACK
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

"leader mappings
nnoremap <tab> %
vnoremap <tab> %
map <Leader>w <C-w>w

" Scratch {{{

command! ScratchToggle call ScratchToggle()

function! ScratchToggle() " {{{
  if exists("w:is_scratch_window")
    unlet w:is_scratch_window
    exec "q"
  else
    exec "normal! :Sscratch\<cr>\<C-W>J:resize 13\<cr>"
    let w:is_scratch_window = 1
  endif
endfunction " }}}

nnoremap <silent> <leader><tab> :ScratchToggle<cr>

"buffer mappings
nnoremap <F5> :buffers<CR>:buffer<Space>

"pressing Tab on the command line will show a menu to complete buffer and file names
set wildchar=<Tab> wildmenu wildmode=full

"press F10 to open the buffer menu.
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>

""settings for ctrlp
"let g:ctrlp_cmd = 'CtrlPBuffer'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
let g:clear_cache_on_exit = 0
let g:ctrlp_working_path_mode = 'ra'

" Show syntax highlighting groups for word under cursor
nmap <C-S-T> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"" zencoding bindings
let g:user_zen_expandabbr_key = '<leader>o'
let g:use_zen_complete_tag = 1

"" supertab bindings for snipmate goodness
"" let g:SuperTabMappingForward = '<S-space>'
"" let g:SuperTabMappingBackward = '<c-S-space>'

"" less to css
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

"" python syntax-highlight all
let python_highlight_all=1

" Show syntax highlighting groups for word under cursor
nmap <C-S-R> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Vim slime settings
let g:slime_target = "tmux"
