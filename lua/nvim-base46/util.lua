local M = {}

M.bg = "#000000"
M.fg = "#ffffff"

---This is a bit of syntactic sugar for creating highlight groups.
---Shamelessly taken from https://github.com/RRethy/base16-nvim
---TODO make this more similar to nvim_set_hl args
---@type HighlightsTable
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

---@param c string
local function hexToRgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

---@param foreground string foreground color
---@param background string background color
---@param alpha number|string number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(foreground, background, alpha)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha

  local bg = hexToRgb(background)
  local fg = hexToRgb(foreground)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.darken(hex, amount, bg)
  return M.blend(hex, bg or M.bg, amount)
end

function M.lighten(hex, amount, fg)
  return M.blend(hex, fg or M.fg, amount)
end

return M
