local M = {}

M.bg = "#000000"
M.fg = "#ffffff"

---This is a bit of syntactic sugar for creating highlight groups.
---@type base46.HighlightsTable
M.highlight = setmetatable({}, {
  __newindex = function(_, hlgroup, args)
    if "string" == type(args) then
      vim.api.nvim_set_hl(0, hlgroup, { link = args })
      return
    end

    vim.api.nvim_set_hl(0, hlgroup, args)
  end,
})

---@param c string
local function hexToRgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

--- Taken from tokyonight:
--- https://github.com/folke/tokyonight.nvim/blob/b0e7c7382a7e8f6456f2a95655983993ffda745e/lua/tokyonight/util.lua#L27-L51
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
