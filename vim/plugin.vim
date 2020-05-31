
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}          " Autocompletion
Plug 'davidhalter/jedi-vim'                              " Autocompletion
Plug 'dense-analysis/ale'                                " Linter
Plug 'junegunn/fzf.vim'                                  " Fast Search

Plug 'tpope/vim-repeat'                                  " . to repeat command
Plug 'tpope/vim-surround'                                " Add s (textobject ?)

Plug 'majutsushi/tagbar'                                 " List Tag.
Plug 'tmhedberg/SimpylFold'                              " Fold python class easily za zo
Plug 'zhou13/vim-easyescape'                             " Improve latency with jk kj jj is remap to ESC

Plug 'easymotion/vim-easymotion'                         " Navigation
Plug 'kshenoy/vim-signature'                             " [Workflow] Place and Toggle Mark (mx, dmx, ]` ]`)
Plug 'haya14busa/incsearch.vim'                          " TODO
Plug 'qpkorr/vim-bufkill'                                "  bd, BD to kill buffer
Plug 'honza/vim-snippets'                                " [Snippets]

" Motion
Plug 'jeetsukumaran/vim-pythonsense'                     " [Motion] Add Motion to improve productivity in python
Plug 'andymass/vim-matchup'                              " [Motion] Add motions around keyword (g%, [%, ]%, z&)

" [Themes]
Plug 'sonph/onehalf'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/rainbow_parentheses.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'



call plug#end()

filetype plugin indent on        " For plugins to load correctly

let g:loaded_matchit = 1
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100

cnoremap jk <ESC>
cnoremap kj <ESC>

let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
