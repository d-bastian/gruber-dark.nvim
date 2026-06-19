local c = require("gruber-dark.palette")
local bg = require("gruber-dark.config").options.transparent and c.none or c.bg_dark

return {
  NvimTreeNormal = { fg = c.fg, bg = bg },
  NvimTreeFolderName = { fg = c.blue },
  NvimTreeFolderIcon = { fg = c.blue },
  NvimTreeRootFolder = { fg = c.yellow, bold = true },
  NvimTreeGitNew = { fg = c.green },
  NvimTreeGitDirty = { fg = c.blue },
  NvimTreeGitDeleted = { fg = c.red },
}
