call plug#begin('~/.vim/plugged')
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
Plug 'neoclide/coc.nvim'
Plug 'prettier/vim-prettier'
Plug 'brooth/far.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '2072/PHP-Indenting-for-VIm'
Plug 'captbaritone/better-indent-support-for-php-with-html'


" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'shawncplus/phpcomplete.vim'
Plug 'preservim/tagbar'
Plug 'vim-scripts/AutoComplPop'


call plug#end()

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
let g:airline_theme='monochrome'
"cursorline
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

