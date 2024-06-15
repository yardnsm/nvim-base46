local M = {}

---@param c Base46Table
---@param hi HighlightsTable
M.setup = function(c, hi)

  hi.TelescopeNormal = { guibg = c.darker_black }

  hi.TelescopePreviewTitle = { guifg = c.black, guibg = c.green }
  hi.TelescopePromptTitle = { guifg = c.black, guibg = c.red }
  hi.TelescopePromptPrefix = { guifg = c.red, guibg = c.black2 }

  hi.TelescopeSelection = { guibg = c.black2, guifg = c.white }
  hi.TelescopeResultsDiffAdd = { guifg = c.green }
  hi.TelescopeResultsDiffChange = { guifg = c.yellow }
  hi.TelescopeResultsDiffDelete = { guifg = c.red }

  hi.TelescopeMatching = { guibg = c.one_bg, guifg = c.blue }

  local telescope_style = require("nvim-base46.config").options.telescope_style

  if telescope_style == "borderless" then
    hi.TelescopeBorder = { guifg = c.darker_black, guibg = c.darker_black }
    hi.TelescopePromptBorder = { guifg = c.black2, guibg = c.black2 }
    hi.TelescopePromptNormal = { guifg = c.white, guibg = c.black2 }
    hi.TelescopeResultsTitle = { guifg = c.darker_black, guibg = c.darker_black }
    hi.TelescopePromptPrefix = { guifg = c.red, guibg = c.black2 }
  elseif telescope_style == "bordered" then
    hi.TelescopeBorder = { guifg = c.one_bg3 }
    hi.TelescopePromptBorder = { guifg = c.one_bg3 }
    hi.TelescopeResultsTitle = { guifg = c.black, guibg = c.green }
    hi.TelescopePreviewTitle = { guifg = c.black, guibg = c.blue }
    hi.TelescopePromptPrefix = { guifg = c.red, guibg = c.black }
    hi.TelescopeNormal = { guibg = c.black }
    hi.TelescopePromptNormal = { guibg = c.black }
  end
end

return M
