local c = require("gruber-dark.palette")

return {
  BlinkCmpMenu = { fg = c.fg, bg = c.bg_dark },
  BlinkCmpMenuSelection = { fg = c.fg_bright, bg = c.bg_visual },
  BlinkCmpLabelMatch = { fg = c.yellow, bold = true },
  BlinkCmpKind = { fg = c.blue },
  BlinkCmpDoc = { fg = c.fg, bg = c.bg_dark },
  BlinkCmpDocBorder = { fg = c.gray, bg = c.bg_dark },
  BlinkCmpSignatureHelp = { fg = c.fg, bg = c.bg_dark },
  BlinkCmpSignatureHelpBorder = { fg = c.gray, bg = c.bg_dark },
}
