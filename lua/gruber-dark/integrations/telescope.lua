local c = require("gruber-dark.palette")
local bg = require("gruber-dark.config").options.transparent and c.none or c.bg_dark

return {
  TelescopeNormal = { fg = c.fg, bg = bg },
  TelescopeBorder = { fg = c.gray, bg = bg },
  TelescopePromptBorder = { fg = c.yellow, bg = bg },
  TelescopePromptTitle = { fg = c.bg, bg = c.yellow, bold = true },
  TelescopePreviewTitle = { fg = c.bg, bg = c.blue, bold = true },
  TelescopeResultsTitle = { fg = c.bg, bg = c.fg_muted, bold = true },
  TelescopeSelection = { fg = c.fg_bright, bg = c.bg_visual },
  TelescopeMatching = { fg = c.yellow, bold = true },
}
