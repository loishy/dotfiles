-- Collection of plugins for navigating / modifying files
return {
  {"nvim-telescope/telescope.nvim", cmd = "Telescope"},
  {"ThePrimeagen/harpoon"}, {'kyazdani42/nvim-tree.lua', tag = 'nightly'},
  {"folke/trouble.nvim", config = function() require "config.libs.trouble" end},
  {"folke/todo-comments.nvim"}, {'stevearc/oil.nvim'}
}
