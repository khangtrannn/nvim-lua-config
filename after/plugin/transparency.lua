-- ============================================================================
-- Terminal Transparency Configuration
-- ============================================================================

local TRANSPARENT_GROUPS = {
  -- Base
  'Normal', 'NormalFloat', 'NormalNC', 'NormalSB',
  -- UI Chrome
  'SignColumn', 'SignColumnSB', 'LineNr', 'LineNrAbove', 'LineNrBelow',
  'CursorLineNr', 'Folded', 'FoldColumn', 'EndOfBuffer',
  'StatusLine', 'StatusLineNC', 'TabLine', 'TabLineFill', 'TabLineSel',
  'VertSplit', 'WinSeparator', 'WinBar', 'WinBarNC', 'MenuSbar', 'Scrollbar',
  -- Cursor
  'CursorLine', 'CursorColumn', 'ColorColumn',
  -- Matching & Reference
  'MatchParen', 'LspReferenceText', 'LspReferenceRead', 'LspReferenceWrite',
  -- Floating Windows
  'FloatShadow', 'FloatShadowThrough',
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
