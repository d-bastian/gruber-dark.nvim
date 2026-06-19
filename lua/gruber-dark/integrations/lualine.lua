local c = require("gruber-dark.palette")

return {
  lualine_a_normal = { fg = c.bg, bg = c.yellow, bold = true },
  lualine_b_normal = { fg = c.fg, bg = c.bg_high },
  lualine_c_normal = { fg = c.fg_muted, bg = c.bg_dark },
  lualine_a_insert = { fg = c.bg, bg = c.green, bold = true },
  lualine_a_visual = { fg = c.bg, bg = c.purple, bold = true },
  lualine_a_replace = { fg = c.bg, bg = c.red, bold = true },
  lualine_a_command = { fg = c.bg, bg = c.blue, bold = true },
}
