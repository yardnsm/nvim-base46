local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.NeoTreeNormal = { bg = c.darker_black }
  hi.NeoTreeNormalNC = { bg = c.darker_black }
  hi.NeoTreeEndOfBuffer = { fg = c.darker_black }
  hi.NeoTreeCursorLine = { bg = c.black2 }

  hi.NeoTreeWinSeparator = { fg = c.darker_black, bg = c.darker_black }

  hi.NeoTreeGitAdded = { fg = c.yellow }
  hi.NeoTreeGitDeleted = { fg = c.red }
  hi.NeoTreeGitIgnored = { fg = c.light_grey }
  hi.NeoTreeGitModified = { fg = c.orange }
  hi.NeoTreeGitStaged = { fg = c.vibrant_green }

  hi.NeoTreeRootName = { fg = c.red, bold = true }

  hi.NeoTreeTabActive = { fg = c.white, bg = c.darker_black, bold = true }
  hi.NeoTreeTabInActive = { fg = c.light_grey, bg = c.darker_black }

  hi.NeoTreeTabSeparatorActive = { fg = c.darker_black, bg = c.darker_black }
  hi.NeoTreeTabSeparatorInActive = { fg = c.darker_black, bg = c.darker_black }
end

return M
