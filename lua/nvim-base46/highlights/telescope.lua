local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.TelescopeNormal = { bg = c.darker_black }

  hi.TelescopePreviewTitle = { fg = c.black, bg = c.green }
  hi.TelescopePromptTitle = { fg = c.black, bg = c.red }
  hi.TelescopePromptPrefix = { fg = c.red, bg = c.black2 }

  hi.TelescopeSelection = { bg = c.black2, fg = c.white }
  hi.TelescopeResultsDiffAdd = { fg = c.green }
  hi.TelescopeResultsDiffChange = { fg = c.yellow }
  hi.TelescopeResultsDiffDelete = { fg = c.red }

  hi.TelescopeMatching = { fg = c.dark_purple, bold = true }
  hi.TelescopeMatching = { bg = c.one_bg, fg = c.blue }
  hi.TelescopeResultsNormal = { fg = c.grey_fg, bg = c.darker_black }

  local telescope_style = require("nvim-base46.config").options.telescope_style

  if telescope_style == "borderless" then
    hi.TelescopeBorder = { fg = c.darker_black, bg = c.darker_black }
    hi.TelescopePromptBorder = { fg = c.black2, bg = c.black2 }
    hi.TelescopePromptNormal = { fg = c.white, bg = c.black2 }
    hi.TelescopeResultsTitle = { fg = c.darker_black, bg = c.darker_black }
    hi.TelescopePromptPrefix = { fg = c.red, bg = c.black2 }
  elseif telescope_style == "bordered" then
    hi.TelescopeBorder = { fg = c.one_bg3 }
    hi.TelescopePromptBorder = { fg = c.one_bg3 }
    hi.TelescopeResultsTitle = { fg = c.black, bg = c.green }
    hi.TelescopePreviewTitle = { fg = c.black, bg = c.blue }
    hi.TelescopePromptPrefix = { fg = c.red, bg = c.black }
    hi.TelescopeNormal = { bg = c.black }
    hi.TelescopePromptNormal = { bg = c.black }
  end
end

return M
