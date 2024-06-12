local M = {}

-- TODO add type definition
M.setup = function(c, hi)
  hi.MasonNormal = "Normal"
  hi.MasonHeader = { guibg = c.red, guifg = c.black }
  hi.MasonHighlight = { guifg = c.blue }
  hi.MasonHighlightBlock = { guifg = c.black, guibg = c.green }
  hi.MasonHighlightBlockBold = { link = "MasonHighlightBlock" }
  hi.MasonHeaderSecondary = { link = "MasonHighlightBlock" }
  hi.MasonMuted = { guifg = c.light_grey }
  hi.MasonMutedBlock = { guifg = c.light_grey, guibg = c.one_bg }
end

return M
