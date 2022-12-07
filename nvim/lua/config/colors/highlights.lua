local colors = require("ui.main_colors")

local ui = {hl_override = "", italic_comments = false, transparency = true}

local black = colors.black
local black2 = colors.black2
local pure_black = colors.pure_black
local blue = colors.blue
local green = colors.green
local grey = colors.grey
local grey_fg = colors.grey_fg
local grey_fg2 = colors.grey_fg2
local nord_blue = colors.nord_blue
local custom_bg = colors.custom_bg
local custom_bg2 = colors.custom_bg2
local purple = colors.purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow
local orange = colors.orange
local custom_bg3 = colors.custom_bg3
local winbar = colors.winbar
local statusline = colors.statusline
local winbar_inactive = colors.winbar_inactive

-- functions for setting highlights
local fg = require("utils.highlight").fg
local fg_bg = require("utils.highlight").fg_bg
local bg = require("utils.highlight").bg

-- [[ Plugin Highlights
-- Alpha
fg("AlphaHeader", green)
fg("AlphaButtons", nord_blue)
fg("AlphaFooter", yellow)

-- Git signs
fg_bg("diffDeleted", red, "NONE")
fg_bg("diffAdded", green, "NONE")
fg_bg("diffChanged", purple, "NONE")

-- Lsp diagnostics
fg("DiagnosticHint", purple)
fg("DiagnosticError", red)
fg("DiagnosticWarn", yellow)
fg("DiagnosticInformation", green)

-- Telescope
bg("TelescopeBorder", "NONE")
bg("TelescopeNormal", "NONE")

-- Nvimtree
bg("NvimTreeNormal", "NONE")
bg("NvimTreeEndOfBuffer", "NONE")

-- Floaterm
fg("FloatermBorder", grey_fg2)

-- Disable some highlight in nvim tree if transparency enabled
if ui.transparency then
  bg("Normal", "NONE")
  bg("EndOfBuffer", "NONE")
  bg("NormalFloat", "NONE")
end

vim.cmd([[
  hi Search cterm=NONE ctermfg=NONE ctermbg=240 guifg=NONE guibg=#585858
  hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030
  hi DiffChange cterm=NONE ctermfg=NONE ctermbg=238 guifg=NONE guibg=#444444
  hi DiffDelete cterm=reverse ctermfg=0 ctermbg=88 guibg=#000000 guifg=#3c1f1e
  hi DiffText cterm=NONE ctermfg=NONE ctermbg=23 guifg=NONE guibg=#005f5f
  hi FloatermBorder guifg=#55E579
  hi FloatBorder guibg=NONE
  hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#16181C gui=NONE
  hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=#000000 guibg=#55E579 gui=NONE
  hi DeniteBackground ctermfg=NONE ctermbg=24 cterm=NONE guifg=#ffffff guibg=#000000 gui=NONE
  hi CursorLine guibg=#323232 guifg=NONE
]])
