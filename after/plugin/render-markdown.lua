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
    highlight_inline = 'RenderMarkdownCodeInline',
  },
})