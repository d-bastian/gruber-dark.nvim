local c = require("gruber-dark.palette")

return {
  RenderMarkdownH1 = { fg = c.yellow, bold = true },
  RenderMarkdownH2 = { fg = c.yellow, bold = true },
  RenderMarkdownH3 = { fg = c.blue, bold = true },
  RenderMarkdownCode = { fg = c.green, bg = c.bg_dark },
  RenderMarkdownBullet = { fg = c.yellow },
  RenderMarkdownLink = { fg = c.blue, underline = true },
}
