local M = {}

---This is a bit of syntactic sugar for creating highlight groups.
---Shamelessly taken from https://github.com/RRethy/base16-nvim
---@type table<string, vim.api.keyset.highlight>
M.highlight = setmetatable({}, {
  __newindex = function(_, hlgroup, args)
    if "string" == type(args) then
      vim.api.nvim_set_hl(0, hlgroup, { link = args })
      return
    end

    local guifg, guibg, gui, guisp = args.guifg or nil, args.guibg or nil, args.gui or nil, args.guisp or nil
    local ctermfg, ctermbg = args.ctermfg or nil, args.ctermbg or nil
    local val = {}

    if guifg then
      val.fg = guifg
    end

    if guibg then
      val.bg = guibg
    end

    if ctermfg then
      val.ctermfg = ctermfg
    end

    if ctermbg then
      val.ctermbg = ctermbg
    end

    if guisp then
      val.sp = guisp
    end

    if gui then
      for x in string.gmatch(gui, "([^,]+)") do
        if x ~= "none" then
          val[x] = true
        end
      end
    end

    vim.api.nvim_set_hl(0, hlgroup, val)
  end,
})

return M
