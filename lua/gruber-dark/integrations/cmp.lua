local c = require("gruber-dark.palette")

return {
  CmpItemAbbr = { fg = c.fg },
  CmpItemAbbrDeprecated = { fg = c.gray, strikethrough = true },
  CmpItemAbbrMatch = { fg = c.yellow, bold = true },
  CmpItemAbbrMatchFuzzy = { fg = c.yellow, bold = true },
  CmpItemKind = { fg = c.blue },
  CmpItemMenu = { fg = c.fg_muted },
}
