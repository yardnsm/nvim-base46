local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  -- https://github.com/neovim/neovim/blob/master/runtime/syntax/gitcommit.vim
  hi.gitcommitOverflow = { fg = c.base08 }
  hi.gitcommitSummary = { fg = c.base0B }
  hi.gitcommitComment = { fg = c.base03 }
  hi.gitcommitUntracked = { fg = c.base03 }
  hi.gitcommitDiscarded = { fg = c.base03 }
  hi.gitcommitSelected = { fg = c.base03 }
  hi.gitcommitHeader = { fg = c.base0E }
  hi.gitcommitSelectedType = { fg = c.base0D }
  hi.gitcommitUnmergedType = { fg = c.base0D }
  hi.gitcommitDiscardedType = { fg = c.base0D }
  hi.gitcommitBranch = { fg = c.base09, bold = true }
  hi.gitcommitUntrackedFile = { fg = c.base0A }
  hi.gitcommitUnmergedFile = { fg = c.base08, bold = true }
  hi.gitcommitDiscardedFile = { fg = c.base08, bold = true }
  hi.gitcommitSelectedFile = { fg = c.base0B, bold = true }

  -- GitSigns
  hi.GitSignsAdd = { fg = c.vibrant_green }
  hi.GitSignsChange = { fg = c.blue }
  hi.GitSignsDelete = { fg = c.red }
end

return M
