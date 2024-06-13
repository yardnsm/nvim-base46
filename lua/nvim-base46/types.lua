---@alias HighlightsTable table<string, vim.api.keyset.highlight | string>

---A table representation of all the base46 colors. It differs a bit from the original base46 table,
---as we're combining the base16 and base30 tables into one for convenience.
---@class Base46Table
---@field white string
---@field black string usually your theme bg
---@field darker_black string 6% darker than black
---@field black2 string 6% lighter than black
---@field one_bg string 10% lighter than black
---@field one_bg2 string 6% lighter than one_bg2
---@field one_bg3 string 6% lighter than one_bg3
---@field grey string 40% lighter than black (the % here depends so choose the perfect grey!)
---@field grey_fg string 10% lighter than grey
---@field grey_fg2 string 5% lighter than grey
---@field light_grey string
---@field red string
---@field baby_pink string
---@field pstrinuink string
---@field line string 15% lighter than black
---@field green string
---@field vibrant_green string
---@field nord_blue string
---@field blue string
---@field seablue string
---@field yellow string 8% lighter than yellow
---@field sun string
---@field purple string
---@field dark_purple string
---@field teal string
---@field orange string
---@field cyan string
---@field statusline_bg string
---@field lightbg string
---@field pmenu_bg string
---@field folder_bgstring string
---@field base00 string
---@field base01 string
---@field base02 string
---@field base03 string
---@field base04 string
---@field base05 string
---@field base06 string
---@field base07 string
---@field base08 string
---@field base09 string
---@field base0A string
---@field base0B string
---@field base0C string
---@field base0D string
---@field base0E string
---@field base0F string