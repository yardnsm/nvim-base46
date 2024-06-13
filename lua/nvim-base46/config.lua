local M = {}

---@class Config
local defaults = {
  theme = "tomorrow_night",

  ---@type 'borderless' | 'bordered'
  telescope_style = "borderless",

  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
}

---@type Config
M.options = {}

---@param options Config|nil
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

---@param options Config|nil
function M.extend(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

return M
