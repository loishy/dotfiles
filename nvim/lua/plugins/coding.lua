return {
  -- CMP & Completion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {"friendly-snippets"},
    config = function() require "config.cores.cmp" end
  },
  {
    'L3MON4D3/LuaSnip',
    enabled = true,
    after = 'hrsh7th/nvim-cmp',
   dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require'luasnip'.filetype_extend("ruby", {"rails"})
    end
  },
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-buffer', dependencies = {"nvim-cmp"}},
  {
    'github/copilot.vim',
    event = "VeryLazy",
    build = "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash",
    config = function()
      vim.g.copilot_filetypes = {
        ["chatgpt"] = false,
        ["python"] = true,
        ["lua"] = true,
        ["rust"] = true,
        ["clojure"] = true,
        ["R"] = true,
        ["nu"] = true,
        ["ruby"] = true,
        ["javascript"] = true,
        ["typescript"] = true,
        ["go"] = true,
        ["markdown"] = true,
        ["*"] = false
      }
    end
  },
  -- Code Format
  {'hrsh7th/cmp-cmdline', dependencies = {'nvim-cmp'}},
  {'numToStr/Comment.nvim'},
  {
    'windwp/nvim-autopairs',
    dependencies = {"nvim-cmp"},
    config = function()
      local present1, autopairs = pcall(require, "nvim-autopairs")
      local present2, cmp_autopairs = pcall(require,
                                            "nvim-autopairs.completion.cmp")

      if not (present1 or present2) then return end


      autopairs.setup()

      local cmp = require "cmp"
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
  },
  {'kamykn/spelunker.vim'},

  -- Treesistter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    config = function() require "config.cores.treesitter" end
  },
  {'nvim-treesitter/nvim-treesitter-textobjects'},

  -- ROR
  {'tpope/vim-rails'},

  -- Testing
  {'vim-test/vim-test', dependencies = {'preservim/vimux'}},
}