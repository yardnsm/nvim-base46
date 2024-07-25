local M = {}

---@type base46.Handler
M.setup = function(c, hi)
  hi.DevIconDefault = { fg = c.red }
  hi.DevIconc = { fg = c.blue }
  hi.DevIconcss = { fg = c.blue }
  hi.DevIcondeb = { fg = c.cyan }
  hi.DevIconDockerfile = { fg = c.cyan }
  hi.DevIconhtml = { fg = c.baby_pink }
  hi.DevIconjpeg = { fg = c.dark_purple }
  hi.DevIconjpg = { fg = c.dark_purple }
  hi.DevIconjs = { fg = c.sun }
  hi.DevIconkt = { fg = c.orange }
  hi.DevIconlock = { fg = c.red }
  hi.DevIconlua = { fg = c.blue }
  hi.DevIconmp3 = { fg = c.white }
  hi.DevIconmp4 = { fg = c.white }
  hi.DevIconout = { fg = c.white }
  hi.DevIconpng = { fg = c.dark_purple }
  hi.DevIconpy = { fg = c.cyan }
  hi.DevIcontoml = { fg = c.blue }
  hi.DevIconts = { fg = c.teal }
  hi.DevIconttf = { fg = c.white }
  hi.DevIconrb = { fg = c.pink }
  hi.DevIconrpm = { fg = c.orange }
  hi.DevIconvue = { fg = c.vibrant_green }
  hi.DevIconwoff = { fg = c.white }
  hi.DevIconwoff2 = { fg = c.white }
  hi.DevIconxz = { fg = c.sun }
  hi.DevIconzip = { fg = c.sun }
  hi.DevIconZig = { fg = c.orange }
  hi.DevIconMd = { fg = c.blue }
  hi.DevIconTSX = { fg = c.blue }
  hi.DevIconJSX = { fg = c.blue }
  hi.DevIconSvelte = { fg = c.red }
  hi.DevIconJava = { fg = c.orange }
  hi.DevIconDart = { fg = c.cyan }
end

return M
