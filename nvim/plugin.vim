
call plug#begin('~/.vim/plugged')
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'dense-analysis/ale'                                " Linter
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
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
Plug 'jeetsukumaran/vim-pythonsense'                     " [Motion] Add Motion to improve productivity in python
Plug 'andymass/vim-matchup'                              " [Motion] Add motions around keyword (g%, [%, ]%, z&)
Plug 'morhetz/gruvbox'
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

"
" Python Base Configuration
"

let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/home/nizam/miniconda3/bin/python'
let g:python_highlight_all = 1

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
autocmd BufWritePost *.py Tab2Space
" Sort import packages.
nnoremap <leader>is :<c-u>ImpSort!<cr>
let g:is_pythonsense_suppress_motion_keymaps = 1

" =================================================================
" Add Tab2Space scripts.
" =================================================================
" Return indent (all whitespace at start of a line), converted from
" tabs to spaces if what = 1, or from spaces to tabs otherwise.
" When converting to tabs, result has no redundant spaces.
" =================================================================
function! Indenting(indent, what, cols)
  let spccol = repeat(' ', a:cols)
  let result = substitute(a:indent, spccol, '\t', 'g')
  let result = substitute(result, ' \+\ze\t', '', 'g')
  if a:what == 1
    let result = substitute(result, '\t', spccol, 'g')
  endif
  return result
endfunction

" Convert whitespace used for indenting (before first non-whitespace).
" what = 0 (convert spaces to tabs), or 1 (convert tabs to spaces).
" cols = string with number of columns per tab, or empty to use 'tabstop'.
" The cursor position is restored, but the cursor will be in a different
" column when the number of characters in the indent of the line is changed.
function! IndentConvert(line1, line2, what, cols)
  let savepos = getpos('.')
  let cols = empty(a:cols) ? &tabstop : a:cols
  execute a:line1 . ',' . a:line2 . 's/^\s\+/\=Indenting(submatch(0), a:what, cols)/e'
  call histdel('search', -1)
  call setpos('.', savepos)
endfunction
command! -nargs=? -range=% Space2Tab call IndentConvert(<line1>,<line2>,0,<q-args>)
command! -nargs=? -range=% Tab2Space call IndentConvert(<line1>,<line2>,1,<q-args>)
command! -nargs=? -range=% RetabIndent call IndentConvert(<line1>,<line2>,&et,<q-args>)


" =============================================================================
" VISTA Options
" =============================================================================
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'
" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }
" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }
" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1
" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

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


"
" Limelight
"

nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)
let g:limelight_conceal_ctermfg = 240


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

source ~/dotfile/nvim/goyo_setting.vim
