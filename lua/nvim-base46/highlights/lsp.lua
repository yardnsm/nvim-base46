local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  -- LSP References
  hi.LspReferenceText = { bg = c.one_bg3 }
  hi.LspReferenceRead = { bg = c.one_bg3 }
  hi.LspReferenceWrite = { bg = c.one_bg3 }

  -- Lsp Diagnostics
  hi.DiagnosticHint = { fg = c.purple }
  hi.DiagnosticError = { fg = c.red }
  hi.DiagnosticWarn = { fg = c.yellow }
  hi.DiagnosticInfo = { fg = c.green }

  hi.DiagnosticFloatingHint = "DiagnosticHint"
  hi.DiagnosticFloatingError = "DiagnosticError"
  hi.DiagnosticFloatingWarn = "DiagnosticWarn"
  hi.DiagnosticFloatingInfo = "DiagnosticInfo"

  hi.LspSignatureActiveParameter = { fg = c.black, bg = c.green }
  hi.LspInlayHint = { bg = c.black2, fg = c.light_grey }

  -- LSP Semantic Highlights
  hi["@lsp.type.class"] = "Structure"
  hi["@lsp.type.decorator"] = "Function"
  hi["@lsp.type.enum"] = "Type"
  hi["@lsp.type.enumMember"] = "Constant"
  hi["@lsp.type.function"] = "@function"
  hi["@lsp.type.interface"] = "Structure"
  hi["@lsp.type.macro"] = "@macro"
  hi["@lsp.type.method"] = "@function.method"
  hi["@lsp.type.namespace"] = "@module"
  hi["@lsp.type.parameter"] = "@variable.parameter"
  hi["@lsp.type.property"] = "@property"
  hi["@lsp.type.struct"] = "Structure"
  hi["@lsp.type.type"] = "@type"
  hi["@lsp.type.typeParamater"] = "TypeDef"
  hi["@lsp.type.variable"] = "@variable"
end

return M
