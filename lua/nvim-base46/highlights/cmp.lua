local M = {}

-- TODO add type definition
M.setup = function(c, hi)
  hi.CmpItemAbbr = { guifg = c.white }
  hi.CmpItemAbbrMatch = { guifg = c.blue, bold = true }
  hi.CmpDoc = { guibg = c.darker_black }
  hi.CmpDocBorder = { guifg = c.darker_black, guibg = c.darker_black }
  hi.CmpPmenu = { guibg = c.black }
  hi.CmpSel = "PmenuSel"

  hi.CmpItemKindConstant = { guifg = c.base09 }
  hi.CmpItemKindFunction = { guifg = c.base0D }
  hi.CmpItemKindIdentifier = { guifg = c.base08 }
  hi.CmpItemKindField = { guifg = c.base08 }
  hi.CmpItemKindVariable = { guifg = c.base0E }
  hi.CmpItemKindSnippet = { guifg = c.red }
  hi.CmpItemKindText = { guifg = c.base0B }
  hi.CmpItemKindStructure = { guifg = c.base0E }
  hi.CmpItemKindType = { guifg = c.base0A }
  hi.CmpItemKindKeyword = { guifg = c.base07 }
  hi.CmpItemKindMethod = { guifg = c.base0D }
  hi.CmpItemKindConstructor = { guifg = c.blue }
  hi.CmpItemKindFolder = { guifg = c.base07 }
  hi.CmpItemKindModule = { guifg = c.base0A }
  hi.CmpItemKindProperty = { guifg = c.base08 }
  hi.CmpItemKindEnum = { guifg = c.blue }
  hi.CmpItemKindUnit = { guifg = c.base0E }
  hi.CmpItemKindClass = { guifg = c.teal }
  hi.CmpItemKindFile = { guifg = c.base07 }
  hi.CmpItemKindInterface = { guifg = c.green }
  hi.CmpItemKindColor = { guifg = c.white }
  hi.CmpItemKindReference = { guifg = c.base05 }
  hi.CmpItemKindEnumMember = { guifg = c.purple }
  hi.CmpItemKindStruct = { guifg = c.base0E }
  hi.CmpItemKindValue = { guifg = c.cyan }
  hi.CmpItemKindEvent = { guifg = c.yellow }
  hi.CmpItemKindOperator = { guifg = c.base05 }
  hi.CmpItemKindTypeParameter = { guifg = c.base08 }
  hi.CmpItemKindCopilot = { guifg = c.green }
  hi.CmpItemKindCodeium = { guifg = c.vibrant_green }
  hi.CmpItemKindTabNine = { guifg = c.baby_pink }

  local cmp_style = require("nvim-base46.config").options.cmp_style

  -- TODO test this
  if cmp_style == "atom" then
    hi.CmpItemMenu = { guifg = c.light_grey, italic = true }
    hi.CmpPmenu = { guibg = c.black2 }
    hi.CmpDoc = { guibg = c.darker_black }
    hi.CmpDocBorder = { guifg = c.darker_black, guibg = c.darker_black }
  elseif cmp_style == "atom_colored" then
    hi.CmpItemMenu = { guifg = c.light_grey, italic = true }
    hi.CmpPmenu = { guibg = c.black2 }
    hi.CmpDoc = { guibg = c.darker_black }
    hi.CmpDocBorder = { guifg = c.darker_black, guibg = c.darker_black }
  elseif cmp_style == "flat_light" then
    hi.CmpPmenu = { guibg = c.black2 }
    hi.CmpBorder = { guifg = c.black2, guibg = c.black2 }
    hi.CmpDocBorder = { guifg = c.darker_black, guibg = c.darker_black }
  elseif cmp_style == "flat_dark" then
    hi.CmpPmenu = { guibg = c.darker_black }
    hi.CmpBorder = { guifg = c.darker_black, guibg = c.darker_black }
    hi.CmpDocBorder = { guifg = c.black2, guibg = c.black2 }
    hi.CmpDoc = { guibg = c.black2 }
  end
end

return M
