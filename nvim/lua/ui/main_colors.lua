local linux = {
  white = "#abb2bf",
  black = "#282c34",
  pure_black = "#000000",
  bg = '#1e1e1e',
  fg = '#abb2bf',
  black2 = "#2b3b51",
  grey = "#5c6370",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  red = "#b02626",
  black_red = "#be5046",
  green = "#60ff60",
  blue = "#40ffff",
  yellow = "#ffff60",
  purple = "#ff80ff",
  cyan = "#40ffff",
  orange = "#d19a66",
  winbar = "NONE",
  winbar_inactive = "NONE",
  statusline = "#1e1e1e",
  cursorline = "#323232"
}

local gruvbox = {
  name = "gruvbox",
  white = "#abb2bf",
  black = "#32302f",
  pure_black = "#000000",
  bg = '#1d2021',
  fg = "#ddc7a1",
  black2 = "#2b3b51",
  grey = "#5c6370",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  red = "#ea6962",
  black_red = "#ea6962",
  green = "#a9b665",
  blue = "#7daea3",
  yellow = "#d8a657",
  purple = "#d3869b",
  cyan = "#89b482",
  orange = "#d8a657",
  winbar = "NONE",
  winbar_inactive = "NONE",
  statusline = "#282828",
  cursorline = "#323232"
}

local edge = {
  name = "edge",
  white = "#c5cdd9",
  black = "#3e4249",
  pure_black = "#000000",
  bg = "#282c34",
  fg = "#c5cdd9",
  black2 = "#2b3b51",
  grey = "#5c6370",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  red = "#ec7279",
  black_red = "#ec7279",
  green = "#a0c980",
  blue = "#6cb6eb",
  yellow = "#deb974",
  purple = "#d38aea",
  cyan = "#5dbbc1",
  orange = "#deb974",
  winbar = "NONE",
  winbar_inactive = "NONE",
  statusline = "#282c34",
  cursorline = "#323232"
}

local dogrun = {
  name = "dogrun",
  white = "#BAC2DE",
  black = "#45475A",
  pure_black = "#000000",
  bg = '#222433',
  fg = '#CDD6F4',
  black2 = "#2b3b51",
  grey = "#5c6370",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  red = "#CE747D",
  black_red = "#F38BA8",
  green = "#8ABC90",
  blue = "#689CC3",
  yellow = "#A8A386",
  purple = "#949BDF",
  cyan = "#85BFAA",
  orange = "#A78C84",
  winbar = "NONE",
  winbar_inactive = "NONE",
  statusline = "#313343",
  cursorline = "#2A2B3B"
}

local dracula = {
  name = "dracula",
  white = "#f8f8f2",
  black = "#000000",
  pure_black = "#000000",
  bg = '#1e1f28',
  fg = '#f8f8f2',
  black2 = "#000000",
  grey = "#545454",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  red = "#ff5555",
  black_red = "#ff5454",
  green = "#50fa7b",
  blue = "#8ae9fc",
  yellow = "#f0fa8b",
  purple = "#bd92f8",
  cyan = "#8ae9fc",
  orange = "#f0fa8b",
  winbar = "NONE",
  winbar_inactive = "NONE",
  statusline = "#1e1f28",
  cursorline = "#2A2B3B"
}

local tokyonight = {
  name = "tokyonight",
  white = "#f8f8f2",
  black = "#000000",
  pure_black = "#000000",
  fg = '#c0caf5',
  black2 = "#000000",
  grey = "#a9b1d6",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  red = "#f7768e",
  black_red = "#f7768e",
  green = "#9ece6a",
  blue = "#7aa2f7",
  yellow = "#e0af68",
  purple = "#bb9af7",
  cyan = "#7dcfff",
  orange = "#e0af68",
  winbar = "NONE",
  winbar_inactive = "NONE",
  statusline = "#24283b",
  cursorline = "#2e3c64"
}

local vscode = {
  name = "vscode",
  white = "#d4d4d4",
  black = "#000000",
  pure_black = "#000000",
  bg = '#1e1e1e',
  fg = '#c0caf5',
  black2 = "#000000",
  grey = "#a9b1d6",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  red = "#f44747",
  black_red = "#f44747",
  green = "#608b4e",
  blue = "#569cd6",
  yellow = "#dcdcaa",
  purple = "#c678dd",
  cyan = "#56b6c2",
  orange = "#e0af68",
  winbar = "NONE",
  winbar_inactive = "NONE",
  statusline = "#1e1e1e",
  cursorline = "#323232"
}

local catppuccin = {
  name = "catppuccin",
  white = "#d4d4d4",
  black = "#000000",
  pure_black = "#000000",
  bg = '#1e1e1e',
  fg = '#c0caf5',
  black2 = "#000000",
  grey = "#a9b1d6",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  red = "#ff5555",
  black_red = "#ff5555",
  green = "#96d382",
  blue = "#739df2",
  yellow = "#eaca89",
  purple = "#b889f4",
  cyan = "#78cec1",
  orange = "#f39967",
  winbar = "NONE",
  winbar_inactive = "NONE",
  statusline = "NONE"
}

local theme = {
  linux = linux,
  gruvbox = gruvbox,
  edge = edge,
  dogrun = dogrun,
  dracula = dracula,
  tokyonight = tokyonight,
  vscode = vscode,
  catppuccin = catppuccin
}

-- return theme for current theme
return theme[vim.g.main_theme] or linux
