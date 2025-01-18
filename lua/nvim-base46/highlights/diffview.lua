local util = require("nvim-base46.util")

local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.DiffviewFilePanelTitle = { fg = c.red, bold = true }
  hi.DiffviewFilePanelConflicts = { fg = c.red, bold = true }
  hi.DiffviewFilePanelCounter = "Comment"
  hi.DiffviewFilePanelFileName = { fg = c.light_grey }
  hi.DiffviewFilePanelSelected = { fg = c.folder_bg }
  hi.DiffviewWinSeparator = { fg = c.darker_black, bg = c.darker_black }

  hi.DiffAdd = { bg = util.darken(c.vibrant_green, 0.15) }
  hi.DiffChange = { bg = util.darken(c.blue, 0.15) }
  hi.DiffDelete = { bg = util.darken(c.red, 0.15) }
  hi.DiffText = { bg = util.darken(c.blue, 0.25) }
end

return M
