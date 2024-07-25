local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.LazyNormal = "Normal"
  hi.LazyH1 = { bg = c.green, fg = c.black }
  hi.LazyButton = { bg = c.one_bg, fg = c.light_grey }
  hi.LazyH2 = { fg = c.red, bold = true, underline = true }
  hi.LazyReasonPlugin = { fg = c.red }
  hi.LazyValue = { fg = c.teal }
  hi.LazyDir = { fg = c.base05 }
  hi.LazyUrl = { fg = c.base05 }
  hi.LazyCommit = { fg = c.green }
  hi.LazyNoCond = { fg = c.red }
  hi.LazySpecial = { fg = c.blue }
  hi.LazyReasonFt = { fg = c.purple }
  hi.LazyOperator = { fg = c.white }
  hi.LazyReasonKeys = { fg = c.teal }
  hi.LazyTaskOutput = { fg = c.white }
  hi.LazyCommitIssue = { fg = c.pink }
  hi.LazyReasonEvent = { fg = c.yellow }
  hi.LazyReasonStart = { fg = c.white }
  hi.LazyReasonRuntime = { fg = c.nord_blue }
  hi.LazyReasonCmd = { fg = c.sun }
  hi.LazyReasonSource = { fg = c.cyan }
  hi.LazyReasonImport = { fg = c.white }
  hi.LazyProgressDone = { fg = c.green }
end

return M
