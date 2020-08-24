map <F3> :NERDTreeToggle<CR>
nnoremap Q @q                   " apply macro (qq: recording, q stop recording, Q apply)
vnoremap Q :norm @q<cr>
nnoremap <F8> :Vista finder coc<CR>
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
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap <S-s> :w<CR>
nnoremap Y y$
nnoremap D d$

nmap <leader>sw<left>  :topleft  vnew<CR>
nmap <leader>sw<right> :botright vnew<CR>
nmap <leader>sw<up>    :topleft  new<CR>
nmap <leader>sw<down>  :botright new<CR>

nmap <leader>s<left>   :leftabove  vnew<CR>
nmap <leader>s<right>  :rightbelow vnew<CR>
nmap <leader>s<up>     :leftabove  new<CR>
nmap <leader>s<down>   :rightbelow new<CR>

map <S-j> :bnext<CR>
map <S-k> :bprev<CR>

