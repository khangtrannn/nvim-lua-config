local TRANSPARENT_GROUPS = {
  -- Base
  'Normal', 'NormalFloat', 'NormalNC', 'NormalSB',

  -- LSP
  'LspInlayHint',
}

local function apply_transparency()
  for _, group in ipairs(TRANSPARENT_GROUPS) do
    vim.api.nvim_set_hl(0, group, { bg = 'NONE' })
  end
end

-- Apply transparency initially
apply_transparency()

-- Reapply transparency after colorscheme changes
vim.api.nvim_create_autocmd('ColorScheme', {
  callback = apply_transparency,
})
