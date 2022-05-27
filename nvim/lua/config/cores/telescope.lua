local M = {}

M.config = function()
  local actions = require 'telescope.actions'
  require("telescope").setup {
    defaults = {
      file_ignore_patterns = {
        ".git/", ".cache", "%.o", "%.a", "%.out", "%.class", "%.pdf", "%.mkv",
        "%.mp4", "%.zip"
      },
      vimgrep_arguments = {
        "rg", "--color=never", "--no-heading", "--with-filename",
        "--line-number", "--column", "--smart-case"
      },
      selection_caret = "  ",
      entry_prefix = "  ",
      sorting_strategy = 'ascending',
      file_sorter = require("telescope.sorters").get_fzy_sorter,
      winblend = 0,
      border = {},
      borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
      color_devicons = true,
      use_less = true,
      set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
      mappings = {
        i = {
          ["<C-d>"] = actions.close,
          ["<Esc>"] = actions.close,
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-b>"] = actions.preview_scrolling_up,
          ["<C-f>"] = actions.preview_scrolling_down,
          ["<C-v>"] = actions.select_vertical,
          ["<C-h>"] = actions.select_horizontal
        }
      },
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
          results_width = 0.8
        },
        vertical = {mirror = false},
        width = 0.5,
        height = 0.80,
        preview_cutoff = 120
      },
      initial_mode = "insert",
      layout_strategy = "horizontal"
    },
    extensions = {
      project = {
        base_dirs = {
          {'~/Dev/Projects/Productpine'}, {'~/Dev/Projects/Eatiplan'},
          {'~/Dev/Projects/Oivan/sakani-workspace'}, {'~/.dotfiles'}
        }
      }
    }
  }

  require'telescope'.load_extension('project')
end

return M
