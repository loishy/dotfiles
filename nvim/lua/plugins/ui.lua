-- Collect all UI related plugins here
return {
  {'tjdevries/colorbuddy.nvim'}, {'tjdevries/gruvbuddy.nvim'},
  {'tjdevries/express_line.nvim'}, {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    opts = {
      -- options
    }
  }, {'nvim-tree/nvim-web-devicons'}, {'goolord/alpha-nvim'},
  {'rcarriga/nvim-notify'}
}
