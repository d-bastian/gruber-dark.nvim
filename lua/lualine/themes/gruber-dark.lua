local c = require("gruber-dark.palette")

return {
  normal = {
    a = { fg = c.bg, bg = c.yellow, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_high },
    c = { fg = c.fg_muted, bg = c.bg_dark },
  },
  insert = {
    a = { fg = c.bg, bg = c.green, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_high },
    c = { fg = c.fg_muted, bg = c.bg_dark },
  },
  visual = {
    a = { fg = c.bg, bg = c.purple, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_high },
    c = { fg = c.fg_muted, bg = c.bg_dark },
  },
  replace = {
    a = { fg = c.bg, bg = c.red, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_high },
    c = { fg = c.fg_muted, bg = c.bg_dark },
  },
  command = {
    a = { fg = c.bg, bg = c.blue, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_high },
    c = { fg = c.fg_muted, bg = c.bg_dark },
  },
  inactive = {
    a = { fg = c.fg_muted, bg = c.bg_dark },
    b = { fg = c.fg_muted, bg = c.bg_dark },
    c = { fg = c.gray, bg = c.bg_dark },
  },
}
