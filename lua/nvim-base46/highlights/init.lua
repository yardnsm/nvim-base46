local util = require("nvim-base46.util")

local M = {}

-- TODO add typw definition
M.setup = function(colors)
  local c = colors
  local hi = util.highlight

  require("nvim-base46.highlights.base").setup(c, hi)
  require("nvim-base46.highlights.syntax").setup(c, hi)
  require("nvim-base46.highlights.lsp").setup(c, hi)
  require("nvim-base46.highlights.treesitter").setup(c, hi)

  -- Plugins
  require("nvim-base46.highlights.lazy").setup(c, hi)
  require("nvim-base46.highlights.cmp").setup(c, hi)
  require("nvim-base46.highlights.mason").setup(c, hi)
  require("nvim-base46.highlights.nvimtree").setup(c, hi)
  require("nvim-base46.highlights.telescope").setup(c, hi)
  require("nvim-base46.highlights.git").setup(c, hi)
  require("nvim-base46.highlights.devicons").setup(c, hi)
end

return M
