local M = {}

-- TODO add type definition
M.setup = function(c, hi)

  hi.TelescopeNormal = { guibg = c.darker_black }

  hi.TelescopePreviewTitle = { guifg = c.black, guibg = c.green }
  hi.TelescopePromptTitle = { guifg = c.black, guibg = c.red }
  hi.TelescopePromptPrefix = { guifg = c.red, guibg = c.black2 }

  hi.TelescopeMatching = { guifg = c.dark_purple, gui = "bold" }
  hi.TelescopeResultsNormal = { guifg = c.grey_fg, guibg = c.darker_black }
  hi.TelescopeSelection = { guibg = c.black2, guifg = c.grey_fg }
  hi.TelescopeResultsDiffAdd = { guifg = c.green }
  hi.TelescopeResultsDiffChange = { guifg = c.yellow }
  hi.TelescopeResultsDiffDelete = { guifg = c.red }

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
    hi.TelescopePromptNormal = { guibg = c.black }
    hi.TelescopeNormal = { guibg = c.black }
    hi.TelescopeResultsNormal = { guifg = c.grey_fg, guibg = c.black }
  end
end

return M
