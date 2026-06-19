local c = require("gruber-dark.palette")

return {
  MiniIndentscopeSymbol = { fg = c.gray },
  MiniStatuslineModeNormal = { fg = c.bg, bg = c.yellow, bold = true },
  MiniStatuslineModeInsert = { fg = c.bg, bg = c.green, bold = true },
  MiniStatuslineModeVisual = { fg = c.bg, bg = c.purple, bold = true },
  MiniStatuslineModeReplace = { fg = c.bg, bg = c.red, bold = true },
  MiniStatuslineModeCommand = { fg = c.bg, bg = c.blue, bold = true },
}
