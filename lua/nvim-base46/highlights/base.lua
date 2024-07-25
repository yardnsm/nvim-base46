local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.Normal = { fg = c.base05, bg = c.base00 }
  hi.Underlined = { underline = true }
  hi.TooLong = { fg = c.base08 }
  hi.Bold = { bold = true }
  hi.Italic = { italic = true }

  -- Spell
  hi.SpellBad = { undercurl = true, sp = c.base08 }
  hi.SpellCap = { undercurl = true, sp = c.base0D }
  hi.SpellLocal = { undercurl = true, sp = c.base0C }
  hi.SpellRare = { undercurl = true, sp = c.base0E }

  hi.NonText = { fg = c.grey_fg }

  hi.Search = { fg = c.base01, bg = c.base0A }
  hi.IncSearch = { fg = c.base01, bg = c.base09 }
  hi.Substitute = { fg = c.base01, bg = c.base0A, sp = "none" }

  -- Diffs
  hi.DiffAdd = { fg = c.blue }
  hi.DiffChange = { fg = c.light_grey }
  hi.DiffDelete = { fg = c.red }
  hi.DiffText = { fg = c.white, bg = c.black2 }

  hi.SignColumn = { fg = c.base03, sp = "NONE" }

  hi.ModeMsg = { fg = c.base0B }
  hi.MoreMsg = { fg = c.base0B }
  hi.WarningMsg = { fg = c.base08 }
  hi.ErrorMsg = { fg = c.base08, bg = c.base00 }
  hi.QuickFixLine = { bg = c.base01, sp = "none" }

  -- Pop-up menu
  hi.Pmenu = { bg = c.one_bg }
  hi.PmenuSbar = { bg = c.one_bg }
  hi.PmenuSel = { bg = c.pmenu_bg, fg = c.black }
  hi.PmenuThumb = { bg = c.grey }

  hi.TabLine = { fg = c.base03, bg = c.base01 }
  hi.TabLineFill = { fg = c.base03, bg = c.base01 }
  hi.TabLineSel = { fg = c.base0B, bg = c.base01, bold = true }

  hi.StatusLine = { fg = c.light_grey, bg = c.statusline_bg }
  hi.StatusLineNC = { fg = c.base03, bg = c.one_bg }

  hi.WinBar = { fg = c.base05, bg = nil }
  hi.WinBarNC = { fg = c.base04, bg = nil }

  hi.WildMenu = { fg = c.base08, bg = c.base0A }

  hi.Folded = { fg = c.light_grey, bg = c.black2 }
  hi.FoldColumn = { fg = c.base0C, bg = c.base01 }

  -- Floating windows
  hi.FloatBorder = { fg = c.blue }
  hi.NormalFloat = { bg = c.darker_black }

  hi.WinSeparator = { fg = c.line }

  -- From kepano/flexoki-neovim:
  --
  --    The MatchWord groups don't actually exist, but we define them here
  --    to link to them in plugin specific files instead of redefining the
  --    same group multiple times
  --
  hi.MatchTag = { fg = c.base08, bg = c.base02 }
  hi.MatchWord = { bg = c.grey, fg = c.white }
  hi.MatchParen = "MatchWord"

  hi.Conceal = { bg = "NONE" }
  hi.Directory = { fg = c.base0D }

  hi.SpecialKey = { fg = c.base03 }
  hi.Title = { fg = c.base0D, sp = "none" }
  hi.Question = { fg = c.base0D }

  hi.LineNr = { fg = c.grey }
  hi.Cursor = { fg = c.base00, bg = c.base05 }
  hi.CursorLine = { bg = c.black2 }
  hi.CursorLineNr = { fg = c.white }
  hi.CursorColumn = { bg = c.black2, sp = "none" }
  hi.ColorColumn = { bg = c.black2, sp = "none" }
  hi.Visual = { fg = "NONE", bg = c.one_bg3 }
  hi.VisualNOS = { fg = c.base08 }

  -- Command-line expressions highlighting
  hi.NvimInternalError = { fg = c.red }
end

return M
