call plug#begin('~/.vim/plugged')
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'dense-analysis/ale'                                " Linter
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'greyblake/vim-preview'
Plug 'tpope/vim-repeat'                                  " . to repeat command
Plug 'tpope/vim-surround'                                " Add s (textobject ?)
Plug 'liuchengxu/vista.vim'                              " Tagbar ++
Plug 'tmhedberg/SimpylFold'                              " Fold python class easily za zo
Plug 'zhou13/vim-easyescape'                             " Improve latency with jk kj jj is remap to ESC
Plug 'psliwka/vim-smoothie'
Plug 'easymotion/vim-easymotion'                         " Navigation
Plug 'kshenoy/vim-signature'                             " [Workflow] Place and Toggle Mark (mx, dmx, ]` ]`)
Plug 'haya14busa/incsearch.vim'                          " TODO
Plug 'qpkorr/vim-bufkill'                                "  bd, BD to kill buffer
Plug 'honza/vim-snippets'                                " [Snippets]
Plug 'majutsushi/tagbar'
" Python Related.
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'jeetsukumaran/vim-pythonsense'                     " [Motion] Add Motion to improve productivity in python
Plug 'andymass/vim-matchup'                              " [Motion] Add motions around keyword (g%, [%, ]%, z&)
" Theme.
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
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'voldikss/vim-floaterm'
Plug 'itchyny/calendar.vim'
Plug 'reedes/vim-pencil' " Super-powered writing things
Plug 'tpope/vim-abolish' " Fancy abbreviation replacements
Plug 'junegunn/limelight.vim' " Highlights only active paragraph
Plug 'junegunn/goyo.vim' " Full screen writing mode
Plug 'reedes/vim-lexical' " Better spellcheck mappings
Plug 'reedes/vim-litecorrect' " Better autocorrections
Plug 'reedes/vim-textobj-sentence' " Treat sentences as text objects
Plug 'reedes/vim-wordy' " Weasel words and passive voice
Plug 'turbio/bracey.vim'
Plug 'lervag/vimtex'  " Latex.
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }  " Hot Reload for LaTex.
call plug#end()

filetype plugin indent on        " For plugins to load correctly


cnoremap jk <ESC>
cnoremap kj <ESC>


let g:loaded_matchit = 1
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


let g:float_preview#docked = 1
noremap  <leader>t  :FloatermToggle<CR>i
noremap! <leader>t  <Esc>:FloatermToggle<CR>i
tnoremap <leader>t  <C-\><C-n>:FloatermToggle<CR>
let g:floaterm_width = 100
let g:floaterm_winblend = 0

" https://breuer.dev/blog/top-neovim-plugins.html
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <C-h> :call WinMove('h')<CR>
nnoremap <silent> <C-j> :call WinMove('j')<CR>
nnoremap <silent> <C-k> :call WinMove('k')<CR>
nnoremap <silent> <C-l> :call WinMove('l')<CR>


" Limelight
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)
let g:limelight_conceal_ctermfg = 240

" TagBar
nmap <F9> :TagbarToggle<CR>

" Writing.
augroup pencil
 autocmd!
 autocmd filetype markdown,mkd call pencil#init()
     \ | call lexical#init()
     \ | call litecorrect#init()
     \ | setl spell spl=en_us fdl=4 noru nonu nornu
     \ | setl fdo+=search
augroup END
" Pencil / Writing Controls {{{
 let g:pencil#wrapModeDefault = 'soft'
 let g:pencil#textwidth = 74
 let g:pencil#joinspaces = 0
 let g:pencil#cursorwrap = 1
 let g:pencil#conceallevel = 3
 let g:pencil#concealcursor = 'c'
 let g:pencil#softDetectSample = 20
 let g:pencil#softDetectThreshold = 130
" }}}
"

source ~/dotfile/nvim/plugins/goyo.vim
source ~/dotfile/nvim/plugins/fzf.vim
source ~/dotfile/nvim/plugins/ale.vim
source ~/dotfile/nvim/plugins/python.vim
source ~/dotfile/nvim/plugins/latex.vim
source ~/dotfile/nvim/plugins/coc.vim
