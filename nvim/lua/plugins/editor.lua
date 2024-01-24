return {
  {'mg979/vim-visual-multi'}, -- Multi Cursor
  {'tpope/vim-surround'},
  {
    "andymass/vim-matchup",
    init = function() vim.g.matchup_matchparen_offscreen = {method = "popup"} end
  },
  {'windwp/nvim-spectre'}, -- Replace Project wide
  {'mbbill/undotree'}, -- History Edited Current File Buffer
  {
    'folke/todo-comments.nvim',
    dependencies = {"nvim-lua/plenary.nvim"},
    opts = {}
  },

  -- Fast jump
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        search = { enabled = false },
        char = { enabled = false }
      }
    },
    keys = {
      {
        "s",
        mode = {"n", "x", "o"},
        function() require("flash").jump() end,
        desc = "Flash"
      },
      {
        "S",
        mode = {"n", "o", "x"},
        function()
          -- show labeled treesitter nodes around the cursor
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter"
      },
      {
        "r",
        mode = "o",
        function()
          -- jump to a remote location to execute the operator
          require("flash").remote({})
        end,
        desc = "Remote Flash"
      },
      {
        "R",
        mode = {"n", "o", "x"},
        function()
          -- show labeled treesitter nodes around the search matches
          require("flash").treesitter_search()
        end,
        desc = "Treesitter Search"
      }
    }
  },

  {'michaelb/sniprun', build = 'sh install.sh'}, -- Run code

  -- Focus
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = {enabled = false, font = "+2"}
      }
    },
    keys = {{"<C-w>o", "<cmd>ZenMode<cr>", desc = "Zen Mode"}}
  },

  -- Git
  {'tpope/vim-fugitive'},
  {'lewis6991/gitsigns.nvim', dependencies = {'nvim-lua/plenary.nvim'}},
  {'sindrets/diffview.nvim'},

  -- Markdown
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- Refactoring
  {
    'ThePrimeagen/refactoring.nvim',
    config = function()
      require('refactoring').setup()
    end
  }
}