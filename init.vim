set encoding=UTF-8


call plug#begin(stdpath('data'))
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/molokai'
Plug 'lifepillar/vim-solarized8'
Plug 'dracula/vim'
Plug 'prettier/vim-prettier'
Plug 'brooth/far.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
" Use release branch (recommend)
Plug '2072/PHP-Indenting-for-VIm'
Plug 'captbaritone/better-indent-support-for-php-with-html'


Plug 'shawncplus/phpcomplete.vim'
Plug 'preservim/tagbar'
Plug 'vim-scripts/AutoComplPop'
Plug 'preservim/nerdtree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdcommenter'
Plug 'ervandew/supertab'


call plug#end()

set number
colorscheme onedark


set number
set shiftwidth=4

"text wrap
set wrap
set linebreak

"Indent
filetype indent on
set ai
set si
set breakindent

"php + html
set ft=phtml


highlight Tabline cterm=none gui=none
highlight TablineSel cterm=none gui=none
set guitablabel=%t


"airline
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_theme='onedark'
let g:gruvbox_contrast_dark="hard"
"cursorline
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

"NERDTREE
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :tabm -1<CR>
nnoremap <silent> <A-Right> :tabm +1<CR>


"NOT MINE
let mapleader = "-"
let maplocalleader = "\\"

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99
"Enable folding with the spacebar
nnoremap <space> za

" open files with ctrl-p
nnoremap <c-p> :Files<cr>

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

syntax on

" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

highlight Comment cterm=italic gui=italic

set laststatus=2
" set showtabline=2

" true colours
set background=dark
set t_Co=256

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif


set nu rnu " relative line numbering
set clipboard=unnamed " public copy/paste register
set ruler
set showcmd
set noswapfile " doesn't create swap files
set noshowmode
set shortmess+=c
set omnifunc=syntaxcomplete#Complete

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set pastetoggle=<F2> " enable paste mode

set wildmenu "graphical auto complete menu
set lazyredraw "redraws the screne when it needs to
set showmatch "highlights matching brackets
set incsearch "search as characters are entered
set hlsearch "highlights matching searches

"clears highlights
nnoremap // :noh<return>
" moves current line down or up
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
" open vimrc in vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" update changes into current buffer
nnoremap <leader>sv :source $MYVIMRC<cr>
" enable or disable line wrapping in current buffer
nnoremap <buffer> <localleader>w :set wrap!<cr>

" c++11 support in syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'


" run code
augroup compileandrun
    autocmd!
    autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
    autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++11 % <cr> :vnew <bar> :te "a.exe" <cr><cr>
    autocmd filetype cpp nnoremap <f6> :vnew <bar> :te "a.exe" <cr>
    autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
    autocmd filetype java nnoremap <f5> :w <bar> !javac % && java %:r <cr>
augroup END

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' :'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'
