call plug#begin('~/.vim/plugged')
Plug 'rakr/vim-one'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'dense-analysis/ale'                                " Linter
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'greyblake/vim-preview'
Plug 'tpope/vim-repeat'                                  " . to repeat command
Plug 'tpope/vim-surround'                                " Add s (textobject ?)
Plug 'liuchengxu/vista.vim'                              " Tagbar ++
Plug 'tmhedberg/SimpylFold'                              " Fold python class easily za zo
Plug 'zhou13/vim-easyescape'                             " Improve latency with jk kj jj is remap to ESC
Plug 'easymotion/vim-easymotion'                         " Navigation
Plug 'kshenoy/vim-signature'                             " [Workflow] Place and Toggle Mark (mx, dmx, ]` ]`)
Plug 'haya14busa/incsearch.vim'                          " TODO
Plug 'qpkorr/vim-bufkill'                                "  bd, BD to kill buffer
Plug 'honza/vim-snippets'                                " [Snippets]
Plug 'majutsushi/tagbar'
Plug 'jeetsukumaran/vim-pythonsense'                     " [Motion] Add Motion to improve productivity in python
Plug 'andymass/vim-matchup'                              " [Motion] Add motions around keyword (g%, [%, ]%, z&)
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
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'lervag/vimtex'  " Latex.
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }  " Hot Reload for LaTex.
call plug#end()

filetype plugin indent on        " For plugins to load correctly


source ~/dotfile/nvim/plugins/fzf.vim
source ~/dotfile/nvim/plugins/ale.vim
source ~/dotfile/nvim/plugins/python.vim
source ~/dotfile/nvim/plugins/latex.vim
source ~/dotfile/nvim/plugins/coc.vim
