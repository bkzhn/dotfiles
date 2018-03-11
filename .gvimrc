" colo
set background=light
colo one


" mswin
source $VIMRUNTIME/mswin.vim
behave mswin

" gui
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L
set guioptions-=T
set guioptions-=m


map <silent> <C-F2> :if &guioptions =~# 'T' <Bar>
                \set guioptions-=T <Bar>
                \set guioptions-=m <Bar>
            \else <Bar>
                \set guioptions+=T <Bar>
                \set guioptions+=m <Bar>
            \endif<CR>

nmap <silent> <F2> :NERDTreeToggle<CR>
map <C-t> :FufFile<CR>
