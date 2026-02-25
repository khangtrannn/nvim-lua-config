-- Terminal transparency: remove backgrounds
-- Most highlight groups inherit from Normal, so we only need to set the base groups

local function set_transparent_bg()
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
end

set_transparent_bg()

vim.api.nvim_create_autocmd('ColorScheme', {
  callback = set_transparent_bg,
})
