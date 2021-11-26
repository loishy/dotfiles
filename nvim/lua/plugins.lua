local present, _ = pcall(require, "packer_init")
local packer

if present then
  packer = require "packer"
else
  return false
end

local use = packer.use

return packer.startup{
  function()
    use {
      "wbthomason/packer.nvim",
      event = "VimEnter"
    }
    require 'packages.cmp'
    require 'packages.git'
    require 'packages.lang'
    require 'packages.navigator'
    require 'packages.network'
    require 'packages.others'
    require 'packages.ui'
    require 'packages.utils'
  end,
  config = {
    display = {
      open_fn = function()
        return require("packer.util").float({border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}})
      end,
      working_sym = "",
      error_sym = "",
      done_sym = "",
      moved_sym = ""
    }
  }
}
