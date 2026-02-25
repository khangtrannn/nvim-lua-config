require('render-markdown').setup({
  render_modes = { 'n', 'c', 'i' },
  anti_conceal = {
    enabled = true,
    disabled_modes = { 'n' },
    above = 0,
    below = 0,
  },
  heading = {
    width = 'block',
    left_pad = 1,
    right_pad = 1,
  },
  code = {
    inline_pad = 1,
  },
})

local COLORS = {
  headings = {
    { bg = '#1f2d3d', fg = '#58a6ff' }, -- H1: Blue
    { bg = '#1c2d1f', fg = '#7ee787' }, -- H2: Green
    { bg = '#2d231f', fg = '#ffa657' }, -- H3: Orange
    { bg = '#2d1f2a', fg = '#d2a8ff' }, -- H4: Purple
    { bg = '#2d2a1f', fg = '#f0e68c' }, -- H5: Yellow
    { bg = '#1f2d2d', fg = '#56d4dd' }, -- H6: Cyan
  },
  code = {
    bg = '#2d333b',
    fg = '#f0883e',
  },
  text = {
    bold = '#ffa657',
  },
  lists = {
    bullet = '#ff7b72',
    number = '#79c0ff',
    checked = '#7ee787',
  },
}

local function apply_heading_highlights()
  for i, colors in ipairs(COLORS.headings) do
    vim.api.nvim_set_hl(0, 'RenderMarkdownH' .. i .. 'Bg', { bg = colors.bg })
    vim.api.nvim_set_hl(0, 'RenderMarkdownH' .. i, { fg = colors.fg, bold = true })
    vim.api.nvim_set_hl(0, '@markup.heading.' .. i .. '.markdown', { fg = colors.fg, bold = true })
  end
end

local function apply_code_highlights()
  vim.api.nvim_set_hl(0, 'RenderMarkdownCode', { bg = 'NONE' }) -- No background for code blocks
  vim.api.nvim_set_hl(0, 'RenderMarkdownCodeInline', { bg = COLORS.code.bg, fg = COLORS.code.fg })
  vim.api.nvim_set_hl(0, '@markup.raw.markdown_inline', { bg = COLORS.code.bg, fg = COLORS.code.fg })
end

local function apply_text_highlights()
  vim.api.nvim_set_hl(0, '@markup.strong.markdown_inline', { fg = COLORS.text.bold, bold = true })
end

local function apply_list_highlights()
  vim.api.nvim_set_hl(0, 'RenderMarkdownBullet', { fg = COLORS.lists.bullet })
  vim.api.nvim_set_hl(0, 'RenderMarkdownOrderedList', { fg = COLORS.lists.number })
  vim.api.nvim_set_hl(0, '@markup.list.markdown', { fg = COLORS.lists.bullet })
  vim.api.nvim_set_hl(0, '@markup.list.checked.markdown', { fg = COLORS.lists.checked })
  vim.api.nvim_set_hl(0, '@markup.list.unchecked.markdown', { fg = COLORS.lists.bullet })
end

local function apply_all_highlights()
  apply_heading_highlights()
  apply_code_highlights()
  apply_text_highlights()
  apply_list_highlights()
end

-- Apply highlights initially
apply_all_highlights()

-- Reapply highlights after colorscheme changes
vim.api.nvim_create_autocmd('ColorScheme', {
  callback = apply_all_highlights,
})
