local M = {}

---@class base46.Config
local defaults = {
  theme = "tomorrow_night",

  ---@type 'borderless' | 'bordered'
  telescope_style = "borderless",

  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
}

---@type base46.Config
M.options = {}

---@param options? base46.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

---@param options? base46.Config
function M.extend(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

return M
