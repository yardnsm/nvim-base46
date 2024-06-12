local M = {}

-- TODO add type definition
M.setup = function(c, hi)
  hi.Normal = { guifg = c.base05, guibg = c.base00 }
  hi.Underlined = { underline = true }
  hi.TooLong = { guifg = c.base08 }
  hi.Bold = { bold = true }
  hi.Italic = { italic = true }

  -- Spell
  hi.SpellBad = { undercurl = true, sp = c.base08 }
  hi.SpellCap = { undercurl = true, sp = c.base0D }
  hi.SpellLocal = { undercurl = true, sp = c.base0C }
  hi.SpellRare = { undercurl = true, sp = c.base0E }

  hi.NonText = { guifg = c.base03 }

  hi.Search = { guifg = c.base01, guibg = c.base0A }
  hi.IncSearch = { guifg = c.base01, guibg = c.base09 }
  hi.Substitute = { guifg = c.base01, guibg = c.base0A, sp = "none" }

  -- Diffs
  hi.DiffAdd = { guifg = c.blue }
  hi.DiffAdded = { guifg = c.green }
  hi.DiffChange = { guifg = c.light_grey }
  hi.DiffChangeDelete = { guifg = c.red }
  hi.DiffModified = { guifg = c.orange }
  hi.DiffDelete = { guifg = c.red }
  hi.DiffRemoved = { guifg = c.red }
  hi.DiffText = { guifg = c.white, guibg = c.black2 }

  hi.SignColumn = { guifg = c.base03, sp = "NONE" }

  hi.ModeMsg = { guifg = c.base0B }
  hi.MoreMsg = { guifg = c.base0B }
  hi.WarningMsg = { guifg = c.base08 }
  hi.ErrorMsg = { guifg = c.base08, guibg = c.base00 }
  hi.QuickFixLine = { guibg = c.base01, sp = "none" }

  -- Pop-up menu
  hi.Pmenu = { guibg = c.one_bg }
  hi.PmenuSbar = { guibg = c.one_bg }
  hi.PmenuSel = { guibg = c.pmenu_bg, guifg = c.black }
  hi.PmenuThumb = { guibg = c.grey }

  hi.TabLine = { guifg = c.base03, guibg = c.base01 }
  hi.TabLineFill = { guifg = c.base03, guibg = c.base01 }
  hi.TabLineSel = { guifg = c.base0B, guibg = c.base01 }

  hi.StatusLine = { guifg = c.light_grey, guibg = c.statusline_bg }
  hi.StatusLineNC = { guifg = c.base03, guibg = c.one_bg }

  hi.WinBar = { guifg = c.base05, guibg = nil }
  hi.WinBarNC = { guifg = c.base04, guibg = nil }

  hi.WildMenu = { guifg = c.base08, guibg = c.base0A }

  hi.Folded = { guifg = c.light_grey, guibg = c.black2 }
  hi.FoldColumn = { guifg = c.base0C, guibg = c.base01 }


  -- Floating windows
  hi.FloatBorder = { guifg = c.blue }
  hi.NormalFloat = { guibg = c.darker_black }

  hi.WinSeparator = { guifg = c.line }

  -- From kepano/flexoki-neovim:
  --
  --    The MatchWord groups don't actually exist, but we define them here
  --    to link to them in plugin specific files instead of redefining the
  --    same group multiple times
  --
  hi.MatchTag = { guifg = c.base08, guibg = c.base02 }
  hi.MatchWord = { guibg = c.grey, guifg = c.white }
  hi.MatchParen = "MatchWord"

  hi.Conceal = { guibg = "NONE" }
  hi.Directory = { guifg = c.base0D }

  hi.SpecialKey = { guifg = c.base03 }
  hi.Title = { guifg = c.base0D, sp = "none" }
  hi.Question = { guifg = c.base0D }

  hi.LineNr = { guifg = c.grey }
  hi.Cursor = { guifg = c.base00, guibg = c.base05 }
  hi.CursorLine = { guibg = "none", sp = "none" }
  hi.CursorLineNr = { guifg = c.white }
  hi.CursorColumn = { guibg = c.base01, sp = "none" }
  hi.ColorColumn = { guibg = c.base01, sp = "none" }
  hi.Visual = { guibg = c.base02 }
  hi.VisualNOS = { guifg = c.base08 }

  --Command-line expressions highlighting
  hi.NvimInternalError = { guifg = c.red }

  -- TODO This belongs to syntax
  hi.Comment = { guifg = c.grey_fg }
  hi.Error = { guifg = c.base00, guibg = c.base08 }
  hi.Debug = { guifg = c.base08 }
  hi.Exception = { guifg = c.base08 }
  hi.Macro = { guifg = c.base08 }
end

return M
