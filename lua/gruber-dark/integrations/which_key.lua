local c = require("gruber-dark.palette")
local bg = require("gruber-dark.config").options.transparent and c.none or c.bg_dark

return {
  WhichKey = { fg = c.yellow },
  WhichKeyGroup = { fg = c.blue },
  WhichKeyDesc = { fg = c.fg },
  WhichKeySeparator = { fg = c.gray },
  WhichKeyFloat = { bg = bg },
  WhichKeyBorder = { fg = c.gray, bg = bg },
}
