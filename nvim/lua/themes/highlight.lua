local cmd = vim.cmd

cmd[[au VimEnter * highlight Normal guibg=#000000]]
cmd[[au VimEnter * highlight EndOfBuffer guibg=#000000]]
cmd[[au VimEnter * highlight FloatermBorder guifg=#55E579]]
cmd[[au VimEnter * highlight VertSplit gui=NONE guibg=NONE guifg=#202023]]
cmd[[au VimEnter * highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan]]
cmd[[au VimEnter * highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow]]
cmd[[au VimEnter * highlight SignColumn guifg=NONE guibg=NONE]]
cmd[[au VimEnter * highlight LineNr guifg=NONE guibg=NONE]]