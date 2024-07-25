local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi["@variable"] = { fg = c.base08 }
  hi["@variable.builtin"] = { fg = c.base08, italic = true }
  hi["@variable.parameter"] = { fg = c.base05 }
  hi["@variable.member"] = { fg = c.base05 }
  hi["@variable.member.key"] = { fg = c.base05 }

  hi["@module"] = { fg = c.base08 }
  hi["@module.builtin"] = { fg = c.base08, italic = true }

  hi["@constant"] = { fg = c.base09 }
  hi["@constant.builtin"] = { fg = c.base09, italic = true }
  hi["@constant.macro"] = { fg = c.base09 }

  hi["@string"] = { fg = c.base0B }
  hi["@string.regex"] = { fg = c.base0C }
  hi["@string.escape"] = { fg = c.base0C }
  hi["@character"] = { fg = c.base08 }
  hi["@character.special"] = { fg = c.base08, italic = true }
  hi["@number"] = { fg = c.base09 }
  hi["@number.float"] = { fg = c.base09 }

  hi["@annotation"] = { fg = c.base0F }
  hi["@attribute"] = { fg = c.base0A }
  hi["@field"] = { fg = c.base05 }
  hi["@parameter"] = { fg = c.base05 }
  hi["@error"] = { fg = c.base08 }

  hi["@keyword.exception"] = { fg = c.base08 }
  hi["@keyword"] = { fg = c.base0E }
  hi["@keyword.function"] = { fg = c.base0E }
  hi["@keyword.return"] = { fg = c.base0E }
  hi["@keyword.operator"] = { fg = c.base0E }
  hi["@keyword.import"] = { fg = c.base0D }
  hi["@keyword.conditional"] = { fg = c.base0E }
  hi["@keyword.conditional.ternary"] = { fg = c.base0E }
  hi["@keyword.repeat"] = { fg = c.base0A }
  hi["@keyword.storage"] = { fg = c.base0A }
  hi["@keyword.directive.define"] = { fg = c.base0E }
  hi["@keyword.directive"] = { fg = c.base0A }

  hi["@function"] = { fg = c.base0D }
  hi["@function.builtin"] = { fg = c.base0D }
  hi["@function.macro"] = { fg = c.base08 }
  hi["@function.call"] = { fg = c.base0D }
  hi["@function.method"] = { fg = c.base0D }
  hi["@function.method.call"] = { fg = c.base0D }
  hi["@constructor"] = { fg = c.base0C }

  hi["@operator"] = { fg = c.base05 }
  hi["@reference"] = { fg = c.base05 }
  hi["@punctuation.bracket"] = { fg = c.base0F }
  hi["@punctuation.delimiter"] = { fg = c.base0F }
  hi["@symbol"] = { fg = c.base0B }
  hi["@tag"] = { fg = c.base0A }
  hi["@tag.attribute"] = { fg = c.base08 }
  hi["@tag.delimiter"] = { fg = c.base0F }
  hi["@text"] = { fg = c.base05 }
  hi["@text.emphasis"] = { fg = c.base09 }
  hi["@text.strike"] = { fg = c.base0F, strikethrough = true }
  hi["@type.builtin"] = { fg = c.base0A }
  hi["@definition"] = { sp = c.base04, underline = true }
  hi["@scope"] = { bold = true }
  hi["@property"] = { fg = c.base05 }

  -- Markup
  hi["@markup.heading"] = { fg = c.base0D }
  hi["@markup.raw"] = { fg = c.base09 }
  hi["@markup.link"] = { fg = c.base08 }
  hi["@markup.link.url"] = { fg = c.base09, underline = true }
  hi["@markup.link.label"] = { fg = c.base0C }
  hi["@markup.list"] = { fg = c.base08 }
  hi["@markup.strong"] = { bold = true }
  hi["@markup.underline"] = { underline = true }
  hi["@markup.italic"] = { italic = true }
  hi["@markup.strikethrough"] = { strikethrough = true }
  hi["@markup.quote"] = { bg = c.black2 }

  hi["@comment"] = { fg = c.grey_fg }
  hi["@comment.todo"] = { fg = c.yellow, bg = c.darker_black }
  hi["@comment.warning"] = { fg = c.orange, bg = c.darker_black }
  hi["@comment.note"] = { fg = c.blue, bg = c.darker_black }
  hi["@comment.error"] = { fg = c.red, bg = c.darker_black }

  hi["@diff.plus"] = { fg = c.green }
  hi["@diff.minus"] = { fg = c.red }
  hi["@diff.delta"] = { fg = c.light_grey }
end

return M
