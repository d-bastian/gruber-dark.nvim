local M = {}

M.defaults = {
  transparent = false,
  terminal_colors = true,
  dim_inactive = false,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
  integrations = {
    blink_cmp = true,
    cmp = true,
    gitsigns = true,
    indent_blankline = true,
    lazy = true,
    lsp = true,
    lualine = true,
    mini = true,
    neo_tree = true,
    noice = true,
    notify = true,
    nvim_tree = true,
    oil = true,
    render_markdown = true,
    snacks = true,
    telescope = true,
    treesitter = true,
    which_key = true,
  },
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), opts or {})
end

return M
