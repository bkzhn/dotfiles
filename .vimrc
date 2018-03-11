execute pathogen#infect()

" colorscheme
"set background=dark
let g:one_allow_italics=1
"colo one
colo darkblue

syntax on
set number

filetype plugin indent on

set sw=4 ts=4 sts=4 et copyindent autoindent

set noswapfile


set cursorline
set ruler
set mouse=a
set so=5


" airline
let g:airline#extensions#tabline#enabled = 1

" search
set ignorecase incsearch hlsearch

" nerdtree
"autocmd VimEnter * NERDTree
"autocmd BufEnter * lcd %:p:h
"autocmd VimEnter * wincmd p
autocmd VimLeave * NERDTreeClose
noremap <C-e> :NERDTreeToggle<CR>

" neocomplete
let g:neocomplete#enable_at_startup = 1

" encoding
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" open maximized windows
"au GUIEnter * simalt ~x
"au GUIEnter * simalt ~n
set lines=999 columns=999

" keymaps
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i
vmap <Tab> >
vmap <S-Tab> <
nmap <C-Up> <C-W><
nmap <C-Down> <C-W>>

" syntax
autocmd BufNewFile,BufRead *.wsgi setf python

" ctags
nnoremap <leader>. :CtrlPTag<cr>

" launch browser
nnoremap <F12> :!google-chrome <cfile><CR>
"nnoremap <F12> :!google-chrome <cfile>
"nnoremap <F12> :!google-chrome % &

" issue with multiline paste (indentations)
set pastetoggle=<F3>
"set nopaste
let g:solarized_termcolors=256
