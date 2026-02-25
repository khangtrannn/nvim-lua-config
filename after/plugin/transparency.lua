-- Complete terminal transparency
local function set_transparent_bg()
  local transparent_groups = {
    -- Base
    'Normal',
    'NormalFloat',
    'NormalNC',
    'NormalSB',
    -- UI Chrome
    'SignColumn',
    'SignColumnSB',
    'LineNr',
    'LineNrAbove',
    'LineNrBelow',
    'CursorLineNr',
    'Folded',
    'FoldColumn',
    'EndOfBuffer',
    'StatusLine',
    'StatusLineNC',
    'TabLine',
    'TabLineFill',
    'TabLineSel',
    'VertSplit',
    'WinSeparator',
    'WinBar',
    'WinBarNC',
    'MenuSbar',
    'Scrollbar',
    -- Cursor
    'CursorLine',
    'CursorColumn',
    'ColorColumn',
    -- Matching & Reference
    'MatchParen',
    'LspReferenceText',
    'LspReferenceRead',
    'LspReferenceWrite',
    -- Floating Windows
    'FloatShadow',
    'FloatShadowThrough',
    -- LSP
    'LspInlayHint',
  }
  
  for _, group in ipairs(transparent_groups) do
    vim.api.nvim_set_hl(0, group, { bg = 'NONE' })
  end
  
  -- Keep render-markdown code backgrounds transparent
  vim.api.nvim_set_hl(0, 'RenderMarkdownCode', { bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'RenderMarkdownCodeInline', { bg = 'NONE' })
end

set_transparent_bg()

vim.api.nvim_create_autocmd('ColorScheme', {
  callback = set_transparent_bg,
})
