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

" Easy split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap  <leader>t  :FloatermToggle<CR>i
noremap! <leader>t  <Esc>:FloatermToggle<CR>i
tnoremap <leader>t  <C-\><C-n>:FloatermToggle<CR>

nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

" TagBar
nmap <F9> :TagbarToggle<CR>

cnoremap jk <ESC>
cnoremap kj <ESC>

" Options

let g:loaded_matchit = 1
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:float_preview#docked = 1
let g:floaterm_width = 100
let g:floaterm_winblend = 0
let g:limelight_conceal_ctermfg = 240


