local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.MasonNormal = "Normal"
  hi.MasonHeader = { bg = c.red, fg = c.black }
  hi.MasonHighlight = { fg = c.blue }
  hi.MasonHighlightBlock = { fg = c.black, bg = c.green }
  hi.MasonHighlightBlockBold = { link = "MasonHighlightBlock" }
  hi.MasonHeaderSecondary = { link = "MasonHighlightBlock" }
  hi.MasonMuted = { fg = c.light_grey }
  hi.MasonMutedBlock = { fg = c.light_grey, bg = c.one_bg }
end

return M
