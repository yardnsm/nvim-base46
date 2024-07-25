local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.NvimTreeFolderIcon = { fg = c.folder_bg }
  hi.NvimTreeFolderName = { fg = c.folder_bg }
  hi.NvimTreeOpenedFolderName = { fg = c.folder_bg }
  hi.NvimTreeEmptyFolderName = { fg = c.folder_bg }

  hi.NvimTreeFolderArrowOpen = { fg = c.folder_bg }
  hi.NvimTreeFolderArrowClosed = { fg = c.grey_fg }

  hi.NvimTreeIndentMarker = { fg = c.grey_fg }

  hi.NvimTreeNormal = { bg = c.darker_black }
  hi.NvimTreeNormalNC = { bg = c.darker_black }
  hi.NvimTreeEndOfBuffer = { fg = c.darker_black }
  hi.NvimTreeCursorLine = { bg = c.black2 }

  hi.NvimTreeWinSeparator = { fg = c.darker_black, bg = c.darker_black }
  hi.NvimTreeWindowPicker = { fg = c.red, bg = c.black2 }

  hi.NvimTreeGitNew = { fg = c.yellow }
  hi.NvimTreeGitDeleted = { fg = c.red }
  hi.NvimTreeGitIgnored = { fg = c.light_grey }
  hi.NvimTreeGitDirty = { fg = c.orange }
  hi.NvimTreeSpecialFile = { fg = c.yellow, bold = true }
  hi.NvimTreeRootFolder = { fg = c.red, bold = true }
  hi.NvimTreeGitStaged = { fg = c.vibrant_green }
end

return M
