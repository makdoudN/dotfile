" Python Base Configuration

let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/home/nizam/miniconda3/envs/py3.8/bin/python'
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


