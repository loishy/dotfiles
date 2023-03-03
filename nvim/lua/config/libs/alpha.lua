local present, alpha = pcall(require, "alpha")

if not present then return end

-- HEADER SECTION
local ascii = {
  [[0   ______   ______   ______   ______   ]],
  [[x  /\  == \ /\  __ \ /\  __ \ /\__  _\  ]],
  [[5  \ \  __< \ \ \/\ \\ \ \/\ \\/_/\ \/  ]],
  [[8   \ \_\ \_\\ \_____\\ \_____\  \ \_\  ]],
  [[4    \/_/ /_/ \/_____/ \/_____/   \/_/  ]], [[]],
  [[. ,-"-.   ,-"-. ,-"-.   ,-"-. ,-"-.   ,]],
  [[ X | | \ / | | X | | \ / | | X | | \ / ]],
  [[/ \| | |X| | |/ \| | |X| | |/ \| | |X| ]],
  [[   `-!-' `-!-"   `-!-' `-!-'   `-!-' `-]]
}

local header = {
  type = 'text',
  val = ascii,
  opts = {position = "center", hl_shortcut = 'AlphaHeader', hl = 'AlphaHeader'}
}

-- BUTTONS SECTION
local function button(sc, txt, keybind)
  local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

  local opts = {
    position = "center",
    text = txt,
    shortcut = sc,
    cursor = 5,
    width = 36,
    align_shortcut = "right",
    hl_shortcut = 'AlphaButtons',
    hl = "AlphaButtons"
  }

  if keybind then
    opts.keymap = {"n", sc_, keybind, {noremap = true, silent = true}}
  end

  return {
    type = "button",
    val = txt,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
      vim.api.nvim_feedkeys(key, "normal", false)
    end,
    opts = opts
  }
end

local buttons = {
  type = "group",
  val = {
    button("SPC SPC ", "  Find File",
           "<cmd>Telescope find_files hidden=true<cr>"),
    button("SPC fr  ", "  Recent File ",
           "<cmd>Telescope oldfiles previewer=false cwd_only=true<CR>"),
    button("SPC ?   ", "  Help Tags ", "<cmd>Telescope help_tags<CR>"),
    button("SPC /   ", "  Find Word   ", "<cmd>Telescope live_grep<CR>")
  },
  opts = {spacing = 1}
}

-- FOOTER SECTION
local function footer_plugins()
  local v = vim.version()
  return string.format(" v%s.%s.%s", v.major, v.minor, v.patch)
end

local footer = {
  type = "text",
  val = footer_plugins(),
  opts = {position = 'center', hl_shortcut = 'AlphaFooter', hl = 'AlphaFooter'}
}

-- OVERALL LAYOUT SECTION
local section = {header = header, buttons = buttons, footer = footer}

alpha.setup {
  layout = {
    {type = "padding", val = 20}, section.header, {type = "padding", val = 2},
    section.buttons, {type = "padding", val = 1}, section.footer
  },
  opts = {}
}
