local M = {}

function M.hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.merge(a, b)
  return vim.tbl_deep_extend("force", a or {}, b or {})
end

function M.load_groups(groups)
  for group, opts in pairs(groups) do
    M.hl(group, opts)
  end
end

return M
