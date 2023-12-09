" basics
set encoding=utf-8

colo slate

syntax on
set number

set title

set cc=80 " set an 80 column occupied by a tab
set cursorline


set clipboard=unnamedplus " using system clipboard

set ttyfast " speed up scrolling in Vim


" mouse
set mouse=a " enable mouse click
set mouse=v " middle-click paste width


" extra
set nocompatible " disable compatibility to old-time vi


" search
set ignorecase
set hlsearch
set incsearch


" tabs
set expandtab " convert tabs to white spaces

set tabstop=4
set softtabstop=4

set shiftwidth=4 " width for autoindents
set autoindent

set smarttab

filetype plugin indent on " allow auto-indening depending on file type
filetype plugin on

set wildmode=longest,list " get bash-like tab completions


" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeFind<CR>

let g:NERDTreeFileLines = 1

" autostart
autocmd VimEnter * NERDTree | wincmd p


" plugins
call plug#begin()
    " telescope related
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'sharkdp/fd'

    "
    Plug 'preservim/nerdcommenter'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " NERDTree
    Plug 'preservim/nerdtree'
    Plug 'xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'scrooloose/nerdtree-project-plugin'
call plug#end()


