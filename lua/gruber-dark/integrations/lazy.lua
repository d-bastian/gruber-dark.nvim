local c = require("gruber-dark.palette")
local bg = require("gruber-dark.config").options.transparent and c.none or c.bg_dark

return {
  LazyNormal = { fg = c.fg, bg = bg },
  LazyButton = { fg = c.fg, bg = c.bg_high },
  LazyButtonActive = { fg = c.yellow, bg = c.bg_visual, bold = true },
  LazyH1 = { fg = c.bg, bg = c.yellow, bold = true },
  LazyH2 = { fg = c.yellow, bold = true },
  LazySpecial = { fg = c.purple },
  LazyReasonPlugin = { fg = c.blue },
  LazyValue = { fg = c.green },
  LazyCommit = { fg = c.orange },
}
