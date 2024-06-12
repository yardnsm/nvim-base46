local M = {}

-- TODO add type definition
M.setup = function(c, hi)

  -- TODO do we need this?
  hi.gitcommitOverflow = { guifg = c.base08 }
  hi.gitcommitSummary = { guifg = c.base0B }
  hi.gitcommitComment = { guifg = c.base03 }
  hi.gitcommitUntracked = { guifg = c.base03 }
  hi.gitcommitDiscarded = { guifg = c.base03 }
  hi.gitcommitSelected = { guifg = c.base03 }
  hi.gitcommitHeader = { guifg = c.base0E }
  hi.gitcommitSelectedType = { guifg = c.base0D }
  hi.gitcommitUnmergedType = { guifg = c.base0D }
  hi.gitcommitDiscardedType = { guifg = c.base0D }
  hi.gitcommitBranch = { guifg = c.base09, bold = true }
  hi.gitcommitUntrackedFile = { guifg = c.base0A }
  hi.gitcommitUnmergedFile = { guifg = c.base08, bold = true }
  hi.gitcommitDiscardedFile = { guifg = c.base08, bold = true }
  hi.gitcommitSelectedFile = { guifg = c.base0B, bold = true }
end

return M
