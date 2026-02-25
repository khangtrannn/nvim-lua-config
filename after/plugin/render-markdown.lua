-- Render-markdown configuration
require('render-markdown').setup({
  -- Keep rendering active in all modes
  render_modes = { 'n', 'c', 'i' },
  anti_conceal = {
    enabled = true,
    -- Disable anti-conceal in normal mode (fully rendered)
    -- Enable in insert mode (raw text on cursor line only)
    disabled_modes = { 'n' },
    above = 0,
    below = 0,
  },
  heading = {
    width = 'block',
    left_pad = 1,
    right_pad = 1,
    backgrounds = {
      'RenderMarkdownH1Bg',
      'RenderMarkdownH2Bg', 
      'RenderMarkdownH3Bg',
      'RenderMarkdownH4Bg',
      'RenderMarkdownH5Bg',
      'RenderMarkdownH6Bg',
    },
    foregrounds = {
      'RenderMarkdownH1',
      'RenderMarkdownH2',
      'RenderMarkdownH3',
      'RenderMarkdownH4',
      'RenderMarkdownH5',
      'RenderMarkdownH6',
    },
  },
  code = {
    inline_pad = 1,  -- Adds background-colored padding spaces
    highlight_inline = 'RenderMarkdownCodeInline',
  },
})

-- Define heading colors
local heading_colors = {
  { bg = '#1f2d3d', fg = '#58a6ff' }, -- H1: Blue
  { bg = '#1c2d1f', fg = '#7ee787' }, -- H2: Green
  { bg = '#2d231f', fg = '#ffa657' }, -- H3: Orange
  { bg = '#2d1f2a', fg = '#d2a8ff' }, -- H4: Purple
  { bg = '#2d2a1f', fg = '#f0e68c' }, -- H5: Yellow
  { bg = '#1f2d2d', fg = '#56d4dd' }, -- H6: Cyan
}

for i = 1, 6 do
  vim.api.nvim_set_hl(0, 'RenderMarkdownH'..i..'Bg', { bg = heading_colors[i].bg })
  vim.api.nvim_set_hl(0, 'RenderMarkdownH'..i, { fg = heading_colors[i].fg, bold = true })
  vim.api.nvim_set_hl(0, '@markup.heading.'..i..'.markdown', { fg = heading_colors[i].fg, bold = true })
end

-- Inline code highlighting
vim.api.nvim_set_hl(0, 'RenderMarkdownCode', {
  bg = '#2d333b',
})
vim.api.nvim_set_hl(0, 'RenderMarkdownCodeInline', {
  bg = '#2d333b',
  fg = '#f0883e',
})

-- Also set the treesitter group for inline code
vim.api.nvim_set_hl(0, '@markup.raw.markdown_inline', {
  bg = '#2d333b',
  fg = '#f0883e',
})

-- Bold text highlighting
vim.api.nvim_set_hl(0, '@markup.strong.markdown_inline', {
  fg = '#ffa657',
  bold = true,
})
