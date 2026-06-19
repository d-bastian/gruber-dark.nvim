local M = {}

local default_config = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
}

local config = vim.deepcopy(default_config)

local palette = {
  bg        = "#181818",
  bg_dark   = "#101010",
  bg_float  = "#101010",
  bg_high   = "#282828",
  bg_visual = "#453d41",

  fg        = "#e4e4ef",
  fg_bright = "#f4f4ff",
  fg_muted  = "#95a99f",
  gray      = "#52494e",

  yellow    = "#ffdd33",
  green     = "#73c936",
  blue      = "#96a6c8",
  red       = "#f43841",
  orange    = "#cc8c3c",
  purple    = "#9e95c7",
  cyan      = "#95a99f",
  none      = "NONE",
}

local function merge(a, b)
  return vim.tbl_deep_extend("force", a or {}, b or {})
end

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function set_terminal_colors(c)
  vim.g.terminal_color_0 = "#000000"
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.purple
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.fg
  vim.g.terminal_color_8 = c.gray
  vim.g.terminal_color_9 = "#ff4f58"
  vim.g.terminal_color_10 = c.green
  vim.g.terminal_color_11 = c.yellow
  vim.g.terminal_color_12 = c.blue
  vim.g.terminal_color_13 = c.purple
  vim.g.terminal_color_14 = c.cyan
  vim.g.terminal_color_15 = "#ffffff"
end

function M.setup(opts)
  config = merge(default_config, opts or {})
end

function M.load()
  local c = palette
  local transparent_bg = config.transparent and c.none or c.bg
  local transparent_dark = config.transparent and c.none or c.bg_dark

  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "gruber-dark"

  if config.terminal_colors then
    set_terminal_colors(c)
  end

  -- Core editor
  hi("Normal", { fg = c.fg, bg = transparent_bg })
  hi("NormalNC", { fg = c.fg, bg = transparent_bg })
  hi("NormalFloat", { fg = c.fg, bg = transparent_dark })
  hi("FloatBorder", { fg = c.gray, bg = transparent_dark })
  hi("FloatTitle", { fg = c.yellow, bg = transparent_dark, bold = true })

  hi("Cursor", { fg = c.bg, bg = c.yellow })
  hi("CursorLine", { bg = c.bg_high })
  hi("CursorColumn", { bg = c.bg_high })
  hi("ColorColumn", { bg = c.bg_high })
  hi("LineNr", { fg = c.gray })
  hi("CursorLineNr", { fg = c.yellow, bold = true })
  hi("SignColumn", { fg = c.fg, bg = transparent_bg })
  hi("FoldColumn", { fg = c.gray, bg = transparent_bg })
  hi("Folded", { fg = c.fg_muted, bg = c.bg_high })
  hi("Visual", { bg = c.bg_visual })
  hi("VisualNOS", { bg = c.bg_visual })
  hi("Search", { fg = c.bg, bg = c.yellow })
  hi("IncSearch", { fg = c.bg, bg = c.orange })
  hi("CurSearch", { fg = c.bg, bg = c.yellow, bold = true })
  hi("MatchParen", { fg = c.yellow, bg = c.bg_visual, bold = true })

  hi("WinSeparator", { fg = c.bg_high })
  hi("VertSplit", { link = "WinSeparator" })
  hi("StatusLine", { fg = c.fg, bg = c.bg_high })
  hi("StatusLineNC", { fg = c.fg_muted, bg = c.bg_dark })
  hi("TabLine", { fg = c.fg_muted, bg = c.bg_dark })
  hi("TabLineSel", { fg = c.yellow, bg = c.bg })
  hi("TabLineFill", { bg = c.bg_dark })

  hi("Pmenu", { fg = c.fg, bg = c.bg_dark })
  hi("PmenuSel", { fg = c.fg_bright, bg = c.bg_visual })
  hi("PmenuSbar", { bg = c.bg_high })
  hi("PmenuThumb", { bg = c.gray })
  hi("WildMenu", { fg = c.bg, bg = c.yellow })

  hi("Question", { fg = c.yellow })
  hi("MoreMsg", { fg = c.green })
  hi("ModeMsg", { fg = c.fg })
  hi("NonText", { fg = c.gray })
  hi("EndOfBuffer", { fg = c.bg })
  hi("Whitespace", { fg = c.gray })
  hi("SpecialKey", { fg = c.gray })
  hi("Directory", { fg = c.blue })
  hi("Title", { fg = c.yellow, bold = true })
  hi("ErrorMsg", { fg = c.red })
  hi("WarningMsg", { fg = c.orange })
  hi("Todo", { fg = c.bg, bg = c.yellow, bold = true })

  -- Syntax
  hi("Comment", merge({ fg = c.orange }, config.styles.comments))
  hi("String", { fg = c.green })
  hi("Character", { fg = c.green })
  hi("Number", { fg = c.cyan })
  hi("Float", { fg = c.cyan })
  hi("Boolean", { fg = c.cyan })
  hi("Constant", { fg = c.cyan })

  hi("Identifier", merge({ fg = c.fg_bright }, config.styles.variables))
  hi("Function", merge({ fg = c.blue }, config.styles.functions))
  hi("Statement", merge({ fg = c.yellow }, config.styles.keywords))
  hi("Conditional", merge({ fg = c.yellow }, config.styles.keywords))
  hi("Repeat", merge({ fg = c.yellow }, config.styles.keywords))
  hi("Label", { fg = c.yellow })
  hi("Operator", { fg = c.fg })
  hi("Keyword", merge({ fg = c.yellow }, config.styles.keywords))
  hi("Exception", { fg = c.yellow })

  hi("PreProc", { fg = c.purple })
  hi("Include", { fg = c.yellow })
  hi("Define", { fg = c.purple })
  hi("Macro", { fg = c.purple })
  hi("PreCondit", { fg = c.purple })

  hi("Type", { fg = c.fg_muted })
  hi("StorageClass", { fg = c.yellow })
  hi("Structure", { fg = c.fg_muted })
  hi("Typedef", { fg = c.fg_muted })

  hi("Special", { fg = c.yellow })
  hi("SpecialChar", { fg = c.yellow })
  hi("Tag", { fg = c.yellow })
  hi("Delimiter", { fg = c.fg })
  hi("Debug", { fg = c.orange })
  hi("Underlined", { underline = true })
  hi("Ignore", { fg = c.gray })
  hi("Error", { fg = c.red, bold = true })

  -- Diff / git
  hi("DiffAdd", { fg = c.green, bg = "#1d2a1d" })
  hi("DiffChange", { fg = c.blue, bg = "#1d2230" })
  hi("DiffDelete", { fg = c.red, bg = "#2a1d1d" })
  hi("DiffText", { fg = c.yellow, bg = c.bg_visual })

  hi("Added", { fg = c.green })
  hi("Changed", { fg = c.blue })
  hi("Removed", { fg = c.red })

  -- Diagnostics / LSP
  hi("DiagnosticError", { fg = c.red })
  hi("DiagnosticWarn", { fg = c.orange })
  hi("DiagnosticInfo", { fg = c.blue })
  hi("DiagnosticHint", { fg = c.green })
  hi("DiagnosticOk", { fg = c.green })

  hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
  hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.orange })
  hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.blue })
  hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.green })

  hi("LspReferenceText", { bg = c.bg_high })
  hi("LspReferenceRead", { bg = c.bg_high })
  hi("LspReferenceWrite", { bg = c.bg_high })
  hi("LspSignatureActiveParameter", { fg = c.yellow, bold = true })

  -- Treesitter
  local ts = {
    ["@comment"] = "Comment",
    ["@string"] = "String",
    ["@string.escape"] = "SpecialChar",
    ["@character"] = "Character",
    ["@number"] = "Number",
    ["@boolean"] = "Boolean",
    ["@constant"] = "Constant",
    ["@constant.builtin"] = "Constant",
    ["@variable"] = "Identifier",
    ["@variable.builtin"] = "Special",
    ["@variable.parameter"] = "Identifier",
    ["@property"] = "Identifier",
    ["@field"] = "Identifier",
    ["@function"] = "Function",
    ["@function.builtin"] = "Function",
    ["@function.call"] = "Function",
    ["@method"] = "Function",
    ["@method.call"] = "Function",
    ["@constructor"] = "Type",
    ["@keyword"] = "Keyword",
    ["@keyword.function"] = "Keyword",
    ["@keyword.operator"] = "Keyword",
    ["@conditional"] = "Conditional",
    ["@repeat"] = "Repeat",
    ["@operator"] = "Operator",
    ["@type"] = "Type",
    ["@type.builtin"] = "Type",
    ["@namespace"] = "Type",
    ["@module"] = "Type",
    ["@punctuation.delimiter"] = "Delimiter",
    ["@punctuation.bracket"] = "Delimiter",
    ["@punctuation.special"] = "Special",
    ["@tag"] = "Tag",
    ["@tag.attribute"] = "Identifier",
    ["@tag.delimiter"] = "Delimiter",
    ["@markup.heading"] = "Title",
    ["@markup.strong"] = "Bold",
    ["@markup.italic"] = "Italic",
    ["@markup.link"] = "Underlined",
    ["@markup.raw"] = "String",
  }
  for group, link in pairs(ts) do
    hi(group, { link = link })
  end
  hi("Bold", { bold = true })
  hi("Italic", { italic = true })

  -- Telescope
  hi("TelescopeNormal", { fg = c.fg, bg = transparent_dark })
  hi("TelescopeBorder", { fg = c.gray, bg = transparent_dark })
  hi("TelescopePromptBorder", { fg = c.yellow, bg = transparent_dark })
  hi("TelescopePromptTitle", { fg = c.bg, bg = c.yellow, bold = true })
  hi("TelescopePreviewTitle", { fg = c.bg, bg = c.blue, bold = true })
  hi("TelescopeResultsTitle", { fg = c.bg, bg = c.fg_muted, bold = true })
  hi("TelescopeSelection", { fg = c.fg_bright, bg = c.bg_visual })
  hi("TelescopeMatching", { fg = c.yellow, bold = true })

  -- Neo-tree / NvimTree
  hi("NeoTreeNormal", { fg = c.fg, bg = transparent_dark })
  hi("NeoTreeNormalNC", { fg = c.fg, bg = transparent_dark })
  hi("NeoTreeDirectoryName", { fg = c.blue })
  hi("NeoTreeDirectoryIcon", { fg = c.blue })
  hi("NeoTreeRootName", { fg = c.yellow, bold = true })
  hi("NeoTreeGitAdded", { fg = c.green })
  hi("NeoTreeGitModified", { fg = c.blue })
  hi("NeoTreeGitDeleted", { fg = c.red })
  hi("NvimTreeNormal", { fg = c.fg, bg = transparent_dark })
  hi("NvimTreeFolderName", { fg = c.blue })
  hi("NvimTreeFolderIcon", { fg = c.blue })
  hi("NvimTreeRootFolder", { fg = c.yellow, bold = true })
  hi("NvimTreeGitNew", { fg = c.green })
  hi("NvimTreeGitDirty", { fg = c.blue })
  hi("NvimTreeGitDeleted", { fg = c.red })

  -- Completion: nvim-cmp + blink.cmp
  hi("CmpItemAbbr", { fg = c.fg })
  hi("CmpItemAbbrMatch", { fg = c.yellow, bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = c.yellow, bold = true })
  hi("CmpItemKind", { fg = c.blue })
  hi("CmpItemMenu", { fg = c.fg_muted })
  hi("BlinkCmpMenu", { fg = c.fg, bg = c.bg_dark })
  hi("BlinkCmpMenuSelection", { fg = c.fg_bright, bg = c.bg_visual })
  hi("BlinkCmpLabelMatch", { fg = c.yellow, bold = true })
  hi("BlinkCmpKind", { fg = c.blue })
  hi("BlinkCmpDoc", { fg = c.fg, bg = c.bg_dark })
  hi("BlinkCmpDocBorder", { fg = c.gray, bg = c.bg_dark })

  -- GitSigns
  hi("GitSignsAdd", { fg = c.green })
  hi("GitSignsChange", { fg = c.blue })
  hi("GitSignsDelete", { fg = c.red })

  -- WhichKey
  hi("WhichKey", { fg = c.yellow })
  hi("WhichKeyGroup", { fg = c.blue })
  hi("WhichKeyDesc", { fg = c.fg })
  hi("WhichKeySeparator", { fg = c.gray })
  hi("WhichKeyFloat", { bg = transparent_dark })
  hi("WhichKeyBorder", { fg = c.gray, bg = transparent_dark })

  -- Lazy.nvim
  hi("LazyNormal", { fg = c.fg, bg = transparent_dark })
  hi("LazyButton", { fg = c.fg, bg = c.bg_high })
  hi("LazyButtonActive", { fg = c.yellow, bg = c.bg_visual, bold = true })
  hi("LazyH1", { fg = c.bg, bg = c.yellow, bold = true })
  hi("LazyH2", { fg = c.yellow, bold = true })
  hi("LazySpecial", { fg = c.purple })
  hi("LazyReasonPlugin", { fg = c.blue })
  hi("LazyValue", { fg = c.green })
  hi("LazyCommit", { fg = c.orange })

  -- lualine
  hi("lualine_a_normal", { fg = c.bg, bg = c.yellow, bold = true })
  hi("lualine_b_normal", { fg = c.fg, bg = c.bg_high })
  hi("lualine_c_normal", { fg = c.fg_muted, bg = c.bg_dark })
  hi("lualine_a_insert", { fg = c.bg, bg = c.green, bold = true })
  hi("lualine_a_visual", { fg = c.bg, bg = c.purple, bold = true })
  hi("lualine_a_replace", { fg = c.bg, bg = c.red, bold = true })
  hi("lualine_a_command", { fg = c.bg, bg = c.blue, bold = true })

  -- Mini / Indent guides
  hi("IblIndent", { fg = c.bg_high })
  hi("IblScope", { fg = c.gray })
  hi("MiniIndentscopeSymbol", { fg = c.gray })

  -- Noice / notify
  hi("NoiceCmdlinePopup", { fg = c.fg, bg = transparent_dark })
  hi("NoiceCmdlinePopupBorder", { fg = c.yellow, bg = transparent_dark })
  hi("NotifyBackground", { bg = c.bg })
end

function M.colors()
  return palette
end

return M
