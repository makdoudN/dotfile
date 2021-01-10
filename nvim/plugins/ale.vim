" ALE: Extension

let b:ale_linters = ['flake8']
let g:ale_python_flake8_options = '--ignore=E501,E402,E401,E201,F403,E701,E231,E731,E111,E121,E114'
let g:airline#extensions#ale#enabled = 1

let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_set_highlights = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

noremap <C-n> :bnext<CR>
noremap <C-b> :bprev<CR>
noremap <silent> <C-S-Left> :vertical resize +1<CR>
noremap <silent> <C-S-Right> :vertical resize 1<CR>
