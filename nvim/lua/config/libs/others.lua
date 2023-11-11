local M = {}

M.colorizer = function()
  local present, colorizer = pcall(require, "colorizer")
  if present then
    colorizer.setup()
    vim.cmd("ColorizerReloadAllBuffers")
  end
end

M.luasnip = function()
  require("luasnip.loaders.from_vscode").lazy_load()
  require 'luasnip'.filetype_extend("ruby", { "rails" })

  require("luasnip/loaders/from_vscode").load {
    paths = vim.fn.stdpath "config" .. "/snippets"
  }
end

return M
