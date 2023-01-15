return {
  {"neovim/nvim-lspconfig", config = function() require "config.lsp" end},
  {"jose-elias-alvarez/null-ls.nvim"}, -- ROR
  {"tpope/vim-rails"}, -- TS
  {'windwp/nvim-ts-autotag', dependencies = {"nvim-treesitter"}}, -- Flutter
  {"akinsho/flutter-tools.nvim"}, -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    config = function() require "config.cores.treesitter" end
  }, {'liuchengxu/vista.vim'}, {'mfussenegger/nvim-dap'}
}