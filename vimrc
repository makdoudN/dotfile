" BASE

set enc=utf-8
set fileencoding=utf-8
set nocompatible                 " Don't try to be vi compatible

filetype off                     " Helps force plugins to load correctly when it is turned back on below

syntax enable
syntax on

set smartindent
set ruler                         " Show the line and column numbers of the cursor.
set wrap
set textwidth=0                   " Hard-wrap long lines as you type them.
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab                     " Insert spaces when TAB is pressed.
set noshiftround
set hidden                        " Allow hidden buffers
set ttyfast                       " rendering opt
set laststatus=2                  " status bar
set showmode                      " Show current mode.
set showcmd
set noerrorbells                  " Please no more beep
set modeline                      " Enable mode line
set magic                         " Use 'magic' patterns (extended regular expressions).
set smartindent                   " well smart indent :)

set termguicolors

" Folding options

set foldmethod=indent
set foldlevel=99

nnoremap <space> za

set clipboard=unnamed

set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" when search highlights text that correspond.
set hlsearch

let mapleader = ","


" PLUGINS

call plug#begin('~/.vim/plugged')


" Autocompletion

Plug 'ycm-core/YouCompleteMe'

" Linter

"Plug 'w0rp/ale'                                                         " linter

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }                 " On-demand loading
Plug 'tpope/vim-fugitive'                                               " Git wrapper

Plug 'flazz/vim-colorschemes'                                           " Themes
Plug 'arcticicestudio/nord-vim'                                         " Themes
Plug 'itchyny/lightline.vim'                                            " Themes
Plug 'vim-airline/vim-airline-themes'                                   " Themes
Plug 'vim-airline/vim-airline'                                          " Themes
Plug 'rakr/vim-one'

Plug 'ap/vim-buftabline'


Plug 'tmhedberg/SimpylFold'                                             " zc: close fold , zo: open
Plug 'begriffs/vim-haskellconceal'
Plug 'enomsg/vim-haskellConcealPlus'

Plug 'rhlobo/vim-super-retab'
Plug 'easymotion/vim-easymotion'

" see http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
Plug 'godlygeek/tabular'

" use <Tab> for insert completion :)
Plug 'ervandew/supertab'

" surrounding :)
" https://github.com/tpope/vim-surround
" csAB  A///A -> B///B : change surrounding
" dsA                  : delete surrounding
Plug 'tpope/vim-surround'

" Place visual mark in the left,
" mx: toggle mark 'x', dmx: remove mark x
" ]` jump to next mark ]` previous one
Plug 'kshenoy/vim-signature'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kien/rainbow_parentheses.vim'                                     " parenthesis color

" https://github.com/zhou13/vim-easyescape/
" custom remaping of <ESC> with improvements over
" inoremap jk <Esc>
Plug 'zhou13/vim-easyescape'

" Python "
"
"Plug 'davidhalter/jedi'                                                 " python
"Plug 'davidhalter/jedi-vim'
Plug 'heavenshell/vim-pydocstring'                                      " Generate Docstring :Pydocstring
"Plug 'python-mode/python-mode'

" Late

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Snippets

Plug  'SirVer/ultisnips'
Plug 'honza/vim-snippets'


Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'

" Markdown

Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'

" Navigation

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Repeat action using dot .
Plug 'tpope/vim-repeat'

" Motion
Plug 'easymotion/vim-easymotion'
Plug 'jeetsukumaran/vim-pythonsense'

" simple minimap like atome, vscode ...
Plug 'severin-lemaignan/vim-minimap'

" Tag
Plug 'majutsushi/tagbar'

" Todo the following plugins I should be able to understand those :)

"Plug 'haya14busa/incsearch.vim'
Plug 'romainl/vim-cool'
Plug 'junegunn/goyo.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tweekmonster/impsort.vim'
Plug 'townk/vim-autoclose'
call plug#end()

filetype plugin indent on        " For plugins to load correctly

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Python path

let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
let g:python_highlight_all = 1

" Give a shortcut key to NERD Tree
" For mac user -> "fn + F3" (see functionFlip)
map <F3> :NERDTreeToggle<CR>

"  ------------- > Themes < ------------- "

let g:one_allow_italics = 1 " I love italic for comments
let g:airline_theme='one'

colorscheme one      " [one / nord]
"colorscheme nord " [one / nord]

set background=light
"set background=dark

"  ------------- > Rainbow Options < ------------- "

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" ------------------------------------

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:SignatureForceRemoveGlobal = 0

" ------------ command --------------

autocmd BufWritePost *.py Tab2Space

" ------------ mapping --------------

let g:easyescape_chars = { "j": 1, "k": 1}
let g:easyescape_timeout = 200

cnoremap jk <ESC>
cnoremap kj <ESC>

" Macro

nnoremap Q @q                   " apply macro (qq: recording, q stop recording, Q apply)
vnoremap Q :norm @q<cr>

" Tag setup

nnoremap <leader>. :CtrlPTag<cr>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <silent> <Leader>b :TagbarToggle<CR>

set tags=./tags,tags;$HOME

" Buffer / Windows / Tabs Setup

nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

nmap <leader>sw<left>  :topleft  vnew<CR>
nmap <leader>sw<right> :botright vnew<CR>
nmap <leader>sw<up>    :topleft  new<CR>
nmap <leader>sw<down>  :botright new<CR>

nmap <leader>s<left>   :leftabove  vnew<CR>
nmap <leader>s<right>  :rightbelow vnew<CR>
nmap <leader>s<up>     :leftabove  new<CR>
nmap <leader>s<down>   :rightbelow new<CR>

" Motion on Buffer / Windows / Tabs 

noremap <S-l> gt                " changes tabs
noremap <S-h> gT

noremap <C-l> <C-w>l            " changes panes
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" Python

nnoremap <leader>is :<c-u>ImpSort!<cr>

" YCM

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" Snippets

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = [
            \ "/home/nizam/snippets/Ultisnips",
            \ "UltiSnips"
            \ ]

"set rtp+=~/snippets

" Disable Background Color Erase
if $TERM == "xterm-kitty"
  let &t_ut=''
  set termguicolors
            let &t_8f = "\e[38;2;%lu;%lu;%lum"
            let &t_8b = "\e[48;2;%lu;%lu;%lum"
    hi Normal guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
    let &t_ti = &t_ti . "\033]10;#f6f3e8\007\033]11;#242424\007"
    let &t_te = &t_te . "\033]110\007\033]111\007"
endif

if $TERM == "screen-256color"
  let &t_ut=''
  set termguicolors
            let &t_8f = "\e[38;2;%lu;%lu;%lum"
            let &t_8b = "\e[48;2;%lu;%lu;%lum"
    hi Normal guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
    let &t_ti = &t_ti . "\033]10;#f6f3e8\007\033]11;#242424\007"
    let &t_te = &t_te . "\033]110\007\033]111\007"
endif

" Language spelling

setlocal spell spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Buffer
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" ---------- TODO Test / Understand ---------------
set hlsearch
set incsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

nnoremap n nzz
nnoremap N Nzz

let g:indent_guides_enable_on_vim_startup = 1

set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

set ts=2 sw=2 sts=2 et

let g:is_pythonsense_suppress_motion_keymaps = 1

" https://stackoverflow.com/questions/13621845/vim-pumvisible-call-putting-in-random-text
let g:AutoClosePreserveDotReg = 0

" FZF Fuzzy Completion
" ------------------------------------------------------------------------------------

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
imap <c-x><c-l> <plug>(fzf-complete-line)

" Replace the default dictionary completion with fzf-based fuzzy completion
inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')

set rtp+=~/.fzf

nnoremap <C-p> :Files<Cr>

noremap <Leader>s :update<CR>

