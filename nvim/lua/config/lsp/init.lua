vim.cmd [[ 
  sign define DiagnosticSignError text= linehl= texthl=DiagnosticSignError numhl= 
  sign define DiagnosticSignWarn text= linehl= texthl=DiagnosticSignWarn numhl= 
  sign define DiagnosticSignInfo text= linehl= texthl=DiagnosticSignInfo numhl= 
  sign define DiagnosticSignHint text=💡 linehl= texthl=DiagnosticSignHint numhl= 
]]

vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.definition()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', ',rr', '<cmd>lua vim.lsp.buf.rename()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'ac', '<cmd>lua vim.lsp.buf.code_action()<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

-- require('config/lsp/deno')
-- require "config/lsp/bash"
-- require "config/lsp/css"
-- require "config/lsp/rust"
-- require "config/lsp/sql"
require "config/lsp/golang"
require "config/lsp/lua"
require "config/lsp/null_ls"
require "config/lsp/python"
require "config/lsp/ruby"
require "config/lsp/typescript"
