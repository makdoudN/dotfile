
map <F3> :NERDTreeToggle<CR>

cnoremap jk <ESC>
cnoremap kj <ESC>

" Macro

nnoremap Q @q                   " apply macro (qq: recording, q stop recording, Q apply)
vnoremap Q :norm @q<cr>

" Tag setup

nnoremap <F8> :TagbarToggle<CR>
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" Correct the spelling error with the first suggestion.
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

nnoremap n nzz
nnoremap N Nzz

" Quick Save
nnoremap <S-s> :w<CR>

" Yank to end of line
nnoremap Y y$

"Delete to the end of line
nnoremap D d$

" Keep search results at the center of screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Switch between tabs
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt

" Easily create a new tab.
noremap <Leader>tN :tabnew<CR>

" Easily close a tab.
noremap <Leader>tc :tabclose<CR>

" Easily move a tab.
noremap <Leader>tm :tabmove<CR>

" Easily go to next tab.
noremap <Leader>tn :tabnext<CR>

" Easily go to previous tab.
noremap <Leader>tp :tabprevious<CR>

nmap <leader>sw<left>  :topleft  vnew<CR>
nmap <leader>sw<right> :botright vnew<CR>
nmap <leader>sw<up>    :topleft  new<CR>
nmap <leader>sw<down>  :botright new<CR>

nmap <leader>s<left>   :leftabove  vnew<CR>
nmap <leader>s<right>  :rightbelow vnew<CR>
nmap <leader>s<up>     :leftabove  new<CR>
nmap <leader>s<down>   :rightbelow new<CR>

noremap <S-l> gt                " changes tabs
noremap <S-h> gT

noremap <C-l> <C-w>l            " changes panes
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

nmap <LocalLeader>l <Plug>(Limelight)
xmap <LocalLeader>l <Plug>(Limelight)

" LINTER

nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
