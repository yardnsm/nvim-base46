local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.CmpItemAbbr = { fg = c.white }
  hi.CmpItemAbbrMatch = { fg = c.blue, bold = true }
  hi.CmpItemMenu = { fg = c.light_grey, italic = true }

  hi.CmpItemKindConstant = { fg = c.base09 }
  hi.CmpItemKindFunction = { fg = c.base0D }
  hi.CmpItemKindIdentifier = { fg = c.base08 }
  hi.CmpItemKindField = { fg = c.base08 }
  hi.CmpItemKindVariable = { fg = c.base0E }
  hi.CmpItemKindSnippet = { fg = c.red }
  hi.CmpItemKindText = { fg = c.base0B }
  hi.CmpItemKindStructure = { fg = c.base0E }
  hi.CmpItemKindType = { fg = c.base0A }
  hi.CmpItemKindKeyword = { fg = c.base07 }
  hi.CmpItemKindMethod = { fg = c.base0D }
  hi.CmpItemKindConstructor = { fg = c.blue }
  hi.CmpItemKindFolder = { fg = c.base07 }
  hi.CmpItemKindModule = { fg = c.base0A }
  hi.CmpItemKindProperty = { fg = c.base08 }
  hi.CmpItemKindEnum = { fg = c.blue }
  hi.CmpItemKindUnit = { fg = c.base0E }
  hi.CmpItemKindClass = { fg = c.teal }
  hi.CmpItemKindFile = { fg = c.base07 }
  hi.CmpItemKindInterface = { fg = c.green }
  hi.CmpItemKindColor = { fg = c.white }
  hi.CmpItemKindReference = { fg = c.base05 }
  hi.CmpItemKindEnumMember = { fg = c.purple }
  hi.CmpItemKindStruct = { fg = c.base0E }
  hi.CmpItemKindValue = { fg = c.cyan }
  hi.CmpItemKindEvent = { fg = c.yellow }
  hi.CmpItemKindOperator = { fg = c.base05 }
  hi.CmpItemKindTypeParameter = { fg = c.base08 }
  hi.CmpItemKindCopilot = { fg = c.green }
  hi.CmpItemKindCodeium = { fg = c.vibrant_green }
  hi.CmpItemKindTabNine = { fg = c.baby_pink }
end

return M
