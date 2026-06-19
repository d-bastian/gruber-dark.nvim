local c = require("gruber-dark.palette")
local config = require("gruber-dark.config")
local util = require("gruber-dark.util")

local M = {}

function M.core()
  local opts = config.options
  local bg = opts.transparent and c.none or c.bg
  local bg_dark = opts.transparent and c.none or c.bg_dark
  local inactive_bg = opts.dim_inactive and c.bg_dark or bg

  return {
    Normal = { fg = c.fg, bg = bg },
    NormalNC = { fg = c.fg, bg = inactive_bg },
    NormalFloat = { fg = c.fg, bg = bg_dark },
    FloatBorder = { fg = c.gray, bg = bg_dark },
    FloatTitle = { fg = c.yellow, bg = bg_dark, bold = true },

    Cursor = { fg = c.bg, bg = c.yellow },
    CursorLine = { bg = c.bg_high },
    CursorColumn = { bg = c.bg_high },
    ColorColumn = { bg = c.bg_high },
    LineNr = { fg = c.gray },
    CursorLineNr = { fg = c.yellow, bold = true },
    SignColumn = { fg = c.fg, bg = bg },
    FoldColumn = { fg = c.gray, bg = bg },
    Folded = { fg = c.fg_muted, bg = c.bg_high },

    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },
    Search = { fg = c.bg, bg = c.yellow },
    IncSearch = { fg = c.bg, bg = c.orange },
    CurSearch = { fg = c.bg, bg = c.yellow, bold = true },
    MatchParen = { fg = c.yellow, bg = c.bg_visual, bold = true },

    WinSeparator = { fg = c.bg_high },
    VertSplit = { link = "WinSeparator" },
    StatusLine = { fg = c.fg, bg = c.bg_high },
    StatusLineNC = { fg = c.fg_muted, bg = c.bg_dark },
    TabLine = { fg = c.fg_muted, bg = c.bg_dark },
    TabLineSel = { fg = c.yellow, bg = c.bg },
    TabLineFill = { bg = c.bg_dark },

    Pmenu = { fg = c.fg, bg = c.bg_dark },
    PmenuSel = { fg = c.fg_bright, bg = c.bg_visual },
    PmenuSbar = { bg = c.bg_high },
    PmenuThumb = { bg = c.gray },
    WildMenu = { fg = c.bg, bg = c.yellow },

    Question = { fg = c.yellow },
    MoreMsg = { fg = c.green },
    ModeMsg = { fg = c.fg },
    NonText = { fg = c.gray },
    EndOfBuffer = { fg = c.bg },
    Whitespace = { fg = c.gray },
    SpecialKey = { fg = c.gray },
    Directory = { fg = c.blue },
    Title = { fg = c.yellow, bold = true },
    ErrorMsg = { fg = c.red },
    WarningMsg = { fg = c.orange },
    Todo = { fg = c.bg, bg = c.yellow, bold = true },

    Comment = util.merge({ fg = c.orange }, opts.styles.comments),
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.cyan },
    Float = { fg = c.cyan },
    Boolean = { fg = c.cyan },
    Constant = { fg = c.cyan },

    Identifier = util.merge({ fg = c.fg_bright }, opts.styles.variables),
    Function = util.merge({ fg = c.blue }, opts.styles.functions),
    Statement = util.merge({ fg = c.yellow }, opts.styles.keywords),
    Conditional = util.merge({ fg = c.yellow }, opts.styles.keywords),
    Repeat = util.merge({ fg = c.yellow }, opts.styles.keywords),
    Label = { fg = c.yellow },
    Operator = { fg = c.fg },
    Keyword = util.merge({ fg = c.yellow }, opts.styles.keywords),
    Exception = { fg = c.yellow },

    PreProc = { fg = c.purple },
    Include = { fg = c.yellow },
    Define = { fg = c.purple },
    Macro = { fg = c.purple },
    PreCondit = { fg = c.purple },

    Type = { fg = c.fg_muted },
    StorageClass = { fg = c.yellow },
    Structure = { fg = c.fg_muted },
    Typedef = { fg = c.fg_muted },

    Special = { fg = c.yellow },
    SpecialChar = { fg = c.yellow },
    Tag = { fg = c.yellow },
    Delimiter = { fg = c.fg },
    Debug = { fg = c.orange },
    Underlined = { underline = true },
    Ignore = { fg = c.gray },
    Error = { fg = c.red, bold = true },

    DiffAdd = { fg = c.git_add, bg = "#1d2a1d" },
    DiffChange = { fg = c.git_change, bg = "#1d2230" },
    DiffDelete = { fg = c.git_delete, bg = "#2a1d1d" },
    DiffText = { fg = c.yellow, bg = c.bg_visual },

    Added = { fg = c.git_add },
    Changed = { fg = c.git_change },
    Removed = { fg = c.git_delete },

    Bold = { bold = true },
    Italic = { italic = true },
  }
end

return M
