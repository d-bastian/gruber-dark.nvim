local config = require("gruber-dark.config")
local highlights = require("gruber-dark.highlights")
local util = require("gruber-dark.util")
local c = require("gruber-dark.palette")

local M = {}

M.setup = config.setup
M.colors = function()
  return c
end

local function set_terminal_colors()
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

function M.load()
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "gruber-dark"

  if config.options.terminal_colors then
    set_terminal_colors()
  end

  util.load_groups(highlights.core())

  for integration, enabled in pairs(config.options.integrations) do
    if enabled then
      local ok, groups = pcall(require, "gruber-dark.integrations." .. integration)
      if ok and type(groups) == "table" then
        util.load_groups(groups)
      end
    end
  end
end

return M
