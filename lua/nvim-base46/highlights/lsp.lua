local M = {}

-- TODO add type definition
M.setup = function(c, hi)

    -- LSP References
  hi.LspReferenceText = { guifg = c.darker_black, guibg = c.white }
  hi.LspReferenceRead = { guifg = c.darker_black, guibg = c.white }
  hi.LspReferenceWrite = { guifg = c.darker_black, guibg = c.white }

  -- Lsp Diagnostics
  hi.DiagnosticHint = { guifg = c.purple }
  hi.DiagnosticError = { guifg = c.red }
  hi.DiagnosticWarn = { guifg = c.yellow }
  hi.DiagnosticInformation = { guifg = c.green }
  hi.LspSignatureActiveParameter = { guifg = c.black, guibg = c.green }
end

return M
