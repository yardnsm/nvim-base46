local util = require("nvim-base46.util")

local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.NeogitGraphAuthor = { fg = c.orange }
  hi.NeogitGraphRed = { fg = c.red }
  hi.NeogitGraphWhite = { fg = c.white }
  hi.NeogitGraphYellow = { fg = c.yellow }
  hi.NeogitGraphGreen = { fg = c.green }
  hi.NeogitGraphCyan = { fg = c.cyan }
  hi.NeogitGraphBlue = { fg = c.blue }
  hi.NeogitGraphPurple = { fg = c.purple }
  hi.NeogitGraphGray = { fg = c.grey }
  hi.NeogitGraphOrange = { fg = c.orange }
  hi.NeogitGraphBoldOrange = { fg = c.orange, bold = true }
  hi.NeogitGraphBoldRed = { fg = c.red, bold = true }
  hi.NeogitGraphBoldWhite = { fg = c.white, bold = true }
  hi.NeogitGraphBoldYellow = { fg = c.yellow, bold = true }
  hi.NeogitGraphBoldGreen = { fg = c.green, bold = true }
  hi.NeogitGraphBoldCyan = { fg = c.cyan, bold = true }
  hi.NeogitGraphBoldBlue = { fg = c.blue, bold = true }
  hi.NeogitGraphBoldPurple = { fg = c.purple, bold = true }
  hi.NeogitGraphBoldGray = { fg = c.grey, bold = true }

  hi.NeogitHunkMergeHeader = { fg = c.black2, bg = c.grey, bold = true }
  hi.NeogitHunkMergeHeaderHighlight = { fg = c.black, bg = c.cyan, bold = true }
  hi.NeogitHunkMergeHeaderCursor = { fg = c.black, bg = c.cyan, bold = true }
  hi.NeogitHunkHeader = { fg = c.black, bg = c.grey, bold = true }
  hi.NeogitHunkHeaderHighlight = { fg = c.black, bg = c.dark_purple, bold = true }
  hi.NeogitHunkHeaderCursor = { fg = c.black, bg = c.dark_purple, bold = true }

  hi.NeogitDiffContext = { bg = c.one_bg }
  hi.NeogitDiffContextHighlight = { bg = c.black2 }
  hi.NeogitDiffContextCursor = { bg = c.one_bg }
  hi.NeogitDiffAdditions = { fg = c.green }
  hi.NeogitDiffAdd = { fg = c.green, bg = util.darken(c.green, 0.15) }
  hi.NeogitDiffAddHighlight = { fg = c.green, bg = util.darken(c.green, 0.2) }
  hi.NeogitDiffAddCursor = { bg = c.one_bg, fg = c.green }
  hi.NeogitDiffDeletions = { fg = c.red }
  hi.NeogitDiffDelete = { bg = util.darken(c.red, 0.15), fg = c.red }
  hi.NeogitDiffDeleteHighlight = { bg = util.darken(c.red, 0.2), fg = c.red }
  hi.NeogitDiffDeleteCursor = { bg = c.one_bg, fg = c.red }

  hi.NeogitPopupSwitchKey = { fg = c.purple }
  hi.NeogitPopupOptionKey = { fg = c.purple }
  hi.NeogitPopupConfigKey = { fg = c.purple }
  hi.NeogitPopupActionKey = { fg = c.purple }

  hi.NeogitFilePath = { fg = c.blue, italic = true }
  hi.NeogitCommitViewHeader = { bg = c.cyan, fg = c.black }
  hi.NeogitDiffHeader = { bg = c.one_bg2, fg = c.blue, bold = true }
  hi.NeogitDiffHeaderHighlight = { bg = c.one_bg2, fg = c.orange, bold = true }
  hi.NeogitBranch = { fg = c.blue, bold = true }
  hi.NeogitBranchHead = { fg = c.blue, bold = true, underline = true }
  hi.NeogitRemote = { fg = c.green, bold = true }
  hi.NeogitUnmergedInto = { fg = c.purple, bold = true }
  hi.NeogitUnpushedTo = { fg = c.purple, bold = true }
  hi.NeogitUnpulledFrom = { fg = c.purple, bold = true }

  hi.NeogitChangeModified = { fg = c.blue, bold = true, italic = true }

  hi.NeogitChangeAdded = { fg = c.green, bg = util.darken(c.green, 0.15), bold = true, italic = true }

  hi.NeogitChangeDeleted = { fg = c.red, bold = true, italic = true }
  hi.NeogitChangeRenamed = { fg = c.purple, bold = true, italic = true }
  hi.NeogitChangeUpdated = { fg = c.orange, bold = true, italic = true }
  hi.NeogitChangeCopied = { fg = c.cyan, bold = true, italic = true }
  hi.NeogitChangeUnmerged = { fg = c.yellow, bold = true, italic = true }
  hi.NeogitChangeNewFile = { fg = c.green, bold = true, italic = true }
  hi.NeogitSectionHeader = { fg = c.red, bold = true }

  hi.NeogitTagName = { fg = c.yellow }
  hi.NeogitTagDistance = { fg = c.cyan }
  hi.NeogitFloatHeader = { bg = c.black, bold = true }
  hi.NeogitFloatHeaderHighlight = { bg = c.black2, fg = c.cyan, bold = true }
  hi.NeogitWinSeparator = "WinSeparator"
end

return M
