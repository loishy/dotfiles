local packer = require "packer"
local use = packer.use

use {
  "rafamadriz/friendly-snippets",
  event = "InsertEnter",
}
use {
  "hrsh7th/nvim-cmp",
  after = "friendly-snippets",
  config = function()
    require "config.cores.cmp"
  end
}
use {
  "L3MON4D3/LuaSnip",
  wants = "friendly-snippets",
  after = "nvim-cmp",
  config = function()
    require("config.libs.others").luasnip()
  end
}
use {
  "saadparwaiz1/cmp_luasnip",
  after = "LuaSnip",
}
use {
 "hrsh7th/cmp-nvim-lua",
  after = "cmp_luasnip",
}
use {
  "hrsh7th/cmp-nvim-lsp",
  after = "cmp-nvim-lua",
}
use {
  "hrsh7th/cmp-buffer",
  after = "cmp-nvim-lsp",
}
 use {
  "hrsh7th/cmp-calc",
  after = "cmp-buffer",
}
use {
  "tzachar/cmp-tabnine",
  run='./install.sh',
}
