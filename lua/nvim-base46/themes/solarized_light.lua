-- AUTO-GENERATED FILE. DO NOT MODIFY.
-- This theme was ported from https://github.com/NvChad/base46

local M = {}

M.base_30 = {
  white = "#002b36",
  darker_black = "#ede7d3", -- Same as white to keep contrast minimal
  black = "#fdf6e3", -- base
  black2 = "#ede7d3",
  one_bg = "#e8dfc9", -- same as Solarized light base 2
  one_bg2 = "#e4ddc4",
  one_bg3 = "#ddd6be",
  grey = "#c4b8aa",
  grey_fg = "#b6a99b",
  grey_fg2 = "#a89b8d",
  light_grey = "#9b8e80",
  red = "#dc322f",
  baby_pink = "#ff6e64",
  pink = "#ff6e64",
  line = "#e0dbc3", -- for lines like vertsplit
  green = "#859900",
  vibrant_green = "#b58900",
  nord_blue = "#268bd2",
  blue = "#268bd2",
  yellow = "#b58900",
  sun = "#6c71c4",
  purple = "#6c71c4",
  dark_purple = "#6c71c4",
  teal = "#2aa198",
  orange = "#cb4b16",
  cyan = "#2aa198",
  statusline_bg = "#f1ecdd",
  lightbg = "#e7dec7",
  pmenu_bg = "#859900",
  folder_bg = "#268bd2",
}

M.base_16 = {
  base00 = "#fdf6e3", -- base background
  base01 = "#eee8d5", -- lighter background (relative to base00)
  base02 = "#eae3cb", -- selection background
  base03 = "#93a1a1", -- comments, invisibles, line highlighting
  base04 = "#839496", -- dark foreground (used for status bars)
  base05 = "#586e75", -- default foreground, caret, delimiters, operators
  base06 = "#073642", -- light background
  base07 = "#002b36", -- light foreground (relative to base05)
  base08 = "#dc322f", -- variables, XML tags, markup link text, markup lists, diff deleted
  base09 = "#cb4b16", -- integers, boolean, constants, XML attributes, markup link url
  base0A = "#b58900", -- classes, markup bold, search text background
  base0B = "#859900", -- strings, inherited class, markup code, diff inserted
  base0C = "#2aa198", -- support, regular expressions, escape characters, markup quotes
  base0D = "#268bd2", -- functions, methods, attribute IDs, headings
  base0E = "#6c71c4", -- keywords, storage, selector, markup italic, diff changed
  base0F = "#d33682", -- deprecated, opening/closing embedded language tags, e.g. <?php ?>
}

M.polish_hl = {
  telescope = {
    TelescopeSelection = { bg = M.base_30.one_bg2 },
    TelescopePromptBorder = { bg = M.base_30.one_bg2, fg = M.base_30.one_bg2 },
    TelescopePromptNormal = { bg = M.base_30.one_bg2 },
    TelescopePromptPrefix = { bg = M.base_30.one_bg2 },
  }
}

M.type = "light"

M = vim.tbl_extend("force", {}, M, M.base_16, M.base_30)

return M
