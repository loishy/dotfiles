-- Collection of plugins for navigating / modifying files
return {
  {
    'nvim-telescope/telescope.nvim',
    cmd = "Telescope",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim",    build = "make" },
      { "nvim-telescope/telescope-live-grep-args.nvim" },
      "nvim-telescope/telescope-file-browser.nvim",
    }
  },
  --  streamline your workflow by helping you manage and quickly switch between frequently used files
  {
    "jackMort/tide.nvim",
    config = function()
      require("tide").setup({
        keys = {
          leader = ";",     -- Leader key to prefix all Tide commands
          panel = ";",      -- Open the panel (uses leader key as prefix)
          add_item = "a",   -- Add a new item to the list (leader + 'a')
          delete = "d",     -- Remove an item from the list (leader + 'd')
          clear_all = "x",  -- Clear all items (leader + 'x')
          horizontal = "s", -- Split window horizontally (leader + '-')
          vertical = "v",   -- Split window vertically (leader + '|')
        },
      })
    end,
  },
  { 'nvim-tree/nvim-tree.lua', tag = 'nightly' },
  {
    'folke/flash.nvim',
    event = "VeryLazy",
    opts = { modes = { search = { enabled = false } } },
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function() require("flash").jump() end,
        desc = "Flash"
      }, {
      "S",
      mode = { "n", "o", "x" },
      function()
        -- show labeled treesitter nodes around the cursor
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter"
    }, {
      "r",
      mode = "o",
      function()
        -- jump to a remote location to execute the operator
        require("flash").remote({})
      end,
      desc = "Remote Flash"
    }, {
      "R",
      mode = { "n", "o", "x" },
      function()
        -- show labeled treesitter nodes around the search matches
        require("flash").treesitter_search()
      end,
      desc = "Treesitter Search"
    }
    }
  },
}
