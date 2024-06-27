local util = require("nvim-base46.util")
local config = require("nvim-base46.config")
local highlights = require("nvim-base46.highlights")

local M = {}

---@type Base46Table
M.colors = nil

---@type HighlightsTable
M.highlight = util.highlight

---@param opts Config|nil
M.load = function(opts)
  if opts then
    config.extend(opts)
  end

  local theme = config.options.theme

  vim.o.termguicolors = true

  if vim.g.colors_name then
    vim.cmd("hi clear")
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = string.format("base46-%s", theme)

  -- Update theme colors
  M.colors = require(string.format("nvim-base46.themes.%s", theme))

  -- Update base colors (used for util.darken and util.lighten)
  util.bg = M.colors.black
  util.fg = M.colors.white

  -- Highlight!
  highlights.setup(M.colors)

  if config.options.terminal_colors then
    highlights.setup_terminal(M.colors)
  end
end

---@param opts Config
M.setup = function(opts)
  config.setup(opts)
end

return M
