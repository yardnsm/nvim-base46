local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.SnacksNormal = { bg = c.darker_black }

  hi.SnacksPickerTitle = { fg = c.black, bg = c.blue }
  hi.SnacksPickerPreviewTitle = { fg = c.black, bg = c.green }
  hi.SnacksPickerListTitle = { fg = c.darker_black, bg = c.darker_black }

  hi.SnacksPickerSelected = { bg = c.black2, fg = c.white }

  -- hi.SnacksPickerMatch = { fg = c.dark_purple, bold = true }
  hi.SnacksPickerMatch = { bg = c.one_bg, fg = c.blue }

  hi.SnacksPickerBorder = { fg = c.darker_black, bg = c.darker_black }
  hi.SnacksPickerBoxBorder = { fg = c.blue, bg = c.darker_black }

  hi.SnacksPickerInputTitle = { fg = c.black, bg = c.red }
  hi.SnacksPickerInputBorder = { fg = c.blue, bg = c.darker_black }
  hi.SnacksPickerInputCursorLine = { bg = c.darker_black }

  hi.SnacksPickerListCursorLine = { bg = c.black2 }

  hi.SnacksPickerDimmed = { fg = c.grey_fg, bg = c.darker_black }
  hi.SnacksPickerPrompt = { fg = c.red, bg = c.darker_black }
end

return M
