" Dimitri Wahyudiputra's .vimrc

" Runtime path manipulation
execute pathogen#infect()

" Disable annoying bells
set belloff=all

" This changes the values of a LOT of options, enabling features which are not
" Vi compatible but really really nice.
set nocompatible

" Disable `safe write` for Parcel bundler
set backupcopy=yes

set ignorecase
set infercase
set smartcase
set endofline

syntax enable

set colorcolumn=80

"set foldmethod=indent

" Keep all folds open when a file is opened
"augroup OpenAllFoldsOnFileOpen
  "autocmd!
  "autocmd BufRead * normal zR
"augroup END

" Save folds even if you close the file
"augroup AutoSaveFolds
  "autocmd!
  "autocmd BufWinLeave * mkview
  "autocmd BufWinEnter * silent loadview
"augroup END

" Line numbers
set number relativenumber

set t_Co=256
"set guifont=Hack:h14
"set guioptions=

"set lines=35
"set columns=120
"set termguicolors

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" GUI only
"set linespace=5

colorscheme facebook
set background=dark

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

set timeout
set ttimeout
set timeoutlen=1000
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast

set formatoptions-=t

" Loads indent.vim. The result is when a file is edited its indent file is
" loaded
filetype plugin indent on

" Text width=80
set textwidth=80

" UNIX line endings
set ff=unix

" NO WRAP!
set nowrap

" Line breaks
set linebreak

" This value allows to use the backspace character for moving the
" cursor over automatically inserted indentation and over the start/end of line.
set bs=2

" Highlight search
"set hlsearch

" Indentation
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

" There are several commands which move the cursor within the line. When you get
" to the start/end of a line then these commands will fail as you cannot go on.
" However, many users expect the cursor to be moved onto the previous/next line.
" Vim allows you to chose which commands will wrap the cursor around the line
" borders. Here I allow the cursor left/right keys as well as the 'h' and 'l'
" command to do that.
set ww=<,>,h,l

" Paste toggle
set pastetoggle=<F4>

set path+=**
set wildignore+=*/node_modules/*
set wildignore+=*/vendor/*
set wildignore+=*/.git/*
set wildmenu

" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Highlight unwanted whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Map <leader>n to toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

" Map :fw to invoke :FixWhitespace
nmap :fw :FixWhitespace<CR>

nmap :ex :Explore .<CR>

" NERDTree show hidden files
let NERDTreeShowHidden = 1

" NERDTree ignore some files
let NERDTreeIgnore = ['DS_Store', 'node_modules', 'vendor']

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

" ctrlp show hidden files
let g:ctrlp_show_hidden = 1

" ctrlp custom ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git/\|vendor\|_site\|_production*'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

let g:vim_markdown_folding_style_pythonic = 1

runtime macros/matchit.vim

set directory^=$HOME/.vim/tmp//
