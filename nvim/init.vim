let mapleader = ","
let maplocalleader=";"

filetype off                     " Helps force plugins to load correctly when it is turned back on below
syntax enable
syntax on
set enc=utf-8
set fileencoding=utf-8
set nocompatible                 " Don't try to be vi compatible
set cmdheight=2                  " TODO: Understand "
set shortmess=a                  " TODO: Understand "
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
set foldmethod=indent
set foldlevel=99
set number relativenumber
set clipboard=unnamed
set hlsearch
set incsearch
set backspace=indent,eol,start     " https://vim.fandom.com/wiki/Backspace_and_delete_problems
set completeopt+=preview

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

source ~/dotfile/nvim/snippets/snippets.vim
source ~/dotfile/nvim/mapping.vim
source ~/dotfile/nvim/plugin.vim
source ~/dotfile/nvim/theme.vim

autocmd InsertEnter * :let @/=""
