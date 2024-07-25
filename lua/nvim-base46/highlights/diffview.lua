local util = require("nvim-base46.util")

local M = {}

---@param c base46.Colors
---@param hi base46.HighlightsTable
M.setup = function(c, hi)
  hi.DiffviewFilePanelTitle = "NvimTreeRootFolder"
  hi.DiffviewFilePanelConflicts = "NvimTreeRootFolder"
  hi.DiffviewFilePanelCounter = "Comment"
  hi.DiffviewFilePanelFileName = { guifg = c.light_grey }
  hi.DiffviewFilePanelSelected = { guifg = c.folder_bg }
  hi.DiffviewWinSeparator = { guifg = c.darker_black, guibg = c.darker_black }

  hi.DiffAdd = { guibg = util.darken(c.vibrant_green, 0.15) }
  hi.DiffChange = { guibg = util.darken(c.blue, 0.15) }
  hi.DiffDelete = { guibg = util.darken(c.red, 0.15) }
  hi.DiffText = { guibg = util.darken(c.blue, 0.25) }
end

return M
