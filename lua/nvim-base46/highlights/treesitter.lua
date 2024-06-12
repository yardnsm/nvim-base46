local M = {}

-- TODO add type definition
M.setup = function(c, hi)
  hi["@variable"] = { guifg = c.base05 }
  hi["@variable.builtin"] = { guifg = c.base09 }
  hi["@variable.parameter"] = { guifg = c.base08 }
  hi["@variable.member"] = { guifg = c.base08 }
  hi["@variable.member.key"] = { guifg = c.base08 }

  hi["@module"] = { guifg = c.base08 }
  hi["@module.builtin"] = { guifg = c.base08, gui = "italic" }

  hi["@constant"] = { guifg = c.base08 }
  hi["@constant.builtin"] = { guifg = c.base09 }
  hi["@constant.macro"] = { guifg = c.base08 }

  hi["@string"] = { guifg = c.base0B }
  hi["@string.regex"] = { guifg = c.base0C }
  hi["@string.escape"] = { guifg = c.base0C }
  hi["@character"] = { guifg = c.base08 }
  hi["@character.special"] = { guifg = c.base08, gui = "italic" }
  hi["@number"] = { guifg = c.base09 }
  hi["@number.float"] = { guifg = c.base09 }

  hi["@annotation"] = { guifg = c.base0F }
  hi["@attribute"] = { guifg = c.base0A }
  hi["@error"] = { guifg = c.base08 }

  hi["@keyword.exception"] = { guifg = c.base08 }
  hi["@keyword"] = { guifg = c.base0E }
  hi["@keyword.function"] = { guifg = c.base0E }
  hi["@keyword.return"] = { guifg = c.base0E }
  hi["@keyword.operator"] = { guifg = c.base0E }
  hi["@keyword.import"] = { link = "Include" }
  hi["@keyword.conditional"] = { guifg = c.base0E }
  hi["@keyword.conditional.ternary"] = { guifg = c.base0E }
  hi["@keyword.repeat"] = { guifg = c.base0A }
  hi["@keyword.storage"] = { guifg = c.base0A }
  hi["@keyword.directive.define"] = { guifg = c.base0E }
  hi["@keyword.directive"] = { guifg = c.base0A }

  hi["@function"] = { guifg = c.base0D }
  hi["@function.builtin"] = { guifg = c.base0D }
  hi["@function.macro"] = { guifg = c.base08 }
  hi["@function.call"] = { guifg = c.base0D }
  hi["@function.method"] = { guifg = c.base0D }
  hi["@function.method.call"] = { guifg = c.base0D }
  hi["@constructor"] = { guifg = c.base0C }

  hi["@operator"] = { guifg = c.base05 }
  hi["@reference"] = { guifg = c.base05 }
  hi["@punctuation.bracket"] = { guifg = c.base0F }
  hi["@punctuation.delimiter"] = { guifg = c.base0F }
  hi["@symbol"] = { guifg = c.base0B }
  hi["@tag"] = { guifg = c.base0A }
  hi["@tag.attribute"] = { guifg = c.base08 }
  hi["@tag.delimiter"] = { guifg = c.base0F }
  hi["@text"] = { guifg = c.base05 }
  hi["@text.emphasis"] = { guifg = c.base09 }
  hi["@text.strike"] = { guifg = c.base0F, gui = 'strikethrough' }
  hi["@type.builtin"] = { guifg = c.base0A }
  hi["@definition"] = { sp = c.base04, gui = 'underline' }
  hi["@scope"] = { bold = true }
  hi["@property"] = { guifg = c.base08 }

  -- markup
  hi["@markup.heading"] = { guifg = c.base0D }
  hi["@markup.raw"] = { guifg = c.base09 }
  hi["@markup.link"] = { guifg = c.base08 }
  hi["@markup.link.url"] = { guifg = c.base09, gui = 'underline' }
  hi["@markup.link.label"] = { guifg = c.base0C }
  hi["@markup.list"] = { guifg = c.base08 }
  hi["@markup.strong"] = { bold = true }
  hi["@markup.underline"] = { gui = 'underline' }
  hi["@markup.italic"] = { italic = true }
  hi["@markup.strikethrough"] = { gui = 'strikethrough' }
  hi["@markup.quote"] = { guibg = c.black2 }

  hi["@comment"] = { guifg = c.grey_fg }
  hi["@comment.todo"] = { guifg = c.grey, guibg = c.white }
  hi["@comment.warning"] = { guifg = c.black2, guibg = c.base09 }
  hi["@comment.note"] = { guifg = c.black2, guibg = c.white }
  hi["@comment.danger"] = { guifg = c.black2, guibg = c.red }

  hi["@diff.plus"] = { guifg = c.green }
  hi["@diff.minus"] = { guifg = c.red }
  hi["@diff.delta"] = { guifg = c.light_grey }
end

return M
