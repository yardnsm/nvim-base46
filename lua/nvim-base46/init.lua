local util = require("nvim-base46.util")
local config = require("nvim-base46.config")
local highlights = require("nvim-base46.highlights")

local M = {}

-- TODO add type definition
M.colors = {}

---@type table<string, vim.api.keyset.highlight>
M.highlight = util.highlight

---@param opts Config|nil
M.load = function(opts)
  if opts then
    config.extend(opts)
  end

  M._theme = config.options.theme

  vim.o.termguicolors = true

  if vim.g.colors_name then
    vim.cmd("hi clear")
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = string.format("base46-%s", M._theme)

  -- Update theme colors
  M.colors = require(string.format("nvim-base46.themes.%s", M._theme))

  -- Highlight!
  highlights.setup(M.colors)
end

---@param options Config
M.setup = function(options)
  config.extend(options)
end

return M
