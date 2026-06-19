local c = require("gruber-dark.palette")
local bg = require("gruber-dark.config").options.transparent and c.none or c.bg_dark

return {
  NeoTreeNormal = { fg = c.fg, bg = bg },
  NeoTreeNormalNC = { fg = c.fg, bg = bg },
  NeoTreeDirectoryName = { fg = c.blue },
  NeoTreeDirectoryIcon = { fg = c.blue },
  NeoTreeRootName = { fg = c.yellow, bold = true },
  NeoTreeGitAdded = { fg = c.green },
  NeoTreeGitModified = { fg = c.blue },
  NeoTreeGitDeleted = { fg = c.red },
}
