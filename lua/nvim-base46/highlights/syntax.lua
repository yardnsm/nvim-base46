local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.Comment = { fg = c.grey_fg }

  hi.Constant = { fg = c.base09 }
  hi.String = { fg = c.base0B }
  hi.Character = { fg = c.base08 }
  hi.Number = { fg = c.base09 }
  hi.Boolean = { fg = c.base09 }
  hi.Float = { fg = c.base09 }

  hi.Identifier = { fg = c.base08, sp = "none" }
  hi.Function = { fg = c.base0D }

  hi.Statement = { fg = c.base08 }
  hi.Conditional = { fg = c.base0E }
  hi.Repeat = { fg = c.base0A }
  hi.Label = { fg = c.base0A }
  hi.Operator = { fg = c.base05, sp = "none" }
  hi.Keyword = { fg = c.base0E }
  hi.Exception = { fg = c.base08 }

  hi.PreProc = { fg = c.base0A }
  hi.Include = { fg = c.base0D }
  hi.Define = { fg = c.base0E, sp = "none" }
  hi.Macro = { fg = c.base08 }

  hi.Type = { fg = c.base0A, sp = "none" }
  hi.StorageClass = { fg = c.base0A }
  hi.Structure = { fg = c.base0E }
  hi.Typedef = { fg = c.base0A }

  hi.Special = { fg = c.base0C }
  hi.SpecialChar = { fg = c.base0F }
  hi.Tag = { fg = c.base0A }
  hi.Debug = { fg = c.base08 }
  hi.Delimiter = { fg = c.base0F }
  hi.Error = { fg = c.base00, bg = c.base08 }
  hi.Todo = { fg = c.base0A, bg = c.base01 }
end

return M
