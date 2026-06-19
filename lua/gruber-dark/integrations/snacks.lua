local c = require("gruber-dark.palette")
local bg = require("gruber-dark.config").options.transparent and c.none or c.bg_dark

return {
  SnacksPicker = { fg = c.fg, bg = bg },
  SnacksPickerBorder = { fg = c.gray, bg = bg },
  SnacksPickerMatch = { fg = c.yellow, bold = true },
  SnacksPickerSelected = { fg = c.fg_bright, bg = c.bg_visual },
  SnacksDashboardHeader = { fg = c.yellow },
  SnacksDashboardDesc = { fg = c.blue },
  SnacksDashboardKey = { fg = c.green },
}
