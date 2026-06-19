local c = require("gruber-dark.palette")
local bg = require("gruber-dark.config").options.transparent and c.none or c.bg_dark

return {
  NoiceCmdlinePopup = { fg = c.fg, bg = bg },
  NoiceCmdlinePopupBorder = { fg = c.yellow, bg = bg },
  NoiceConfirm = { fg = c.fg, bg = bg },
  NoiceConfirmBorder = { fg = c.yellow, bg = bg },
}
