return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Colorscheme
  use("folke/tokyonight.nvim")

  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })

  use("nvim-mini/mini.nvim")

  use({
    "MeanderingProgrammer/render-markdown.nvim",
    after = "nvim-treesitter",
    requires = {
      "nvim-mini/mini.nvim", opt = true
    },
    config = function()
      require("render-markdown").setup({
        code = {
          enabled = true,
          render_modes = false,
          sign = true,
          conceal_delimiters = true,
          language = true,
          position = 'left',
          language_icon = true,
          language_name = true,
          language_info = true,
          language_pad = 0,
          disable_background = { 'diff' },
          width = 'full',
          left_margin = 0,
          left_pad = 0,
          right_pad = 0,
          min_width = 0,
          border = 'hide',
          language_border = '█',
          language_left = '',
          language_right = '',
          above = '▄',
          below = '▀',
          inline = true,
          inline_left = '',
          inline_right = '',
          inline_pad = 0,
          priority = nil,
          highlight = 'RenderMarkdownCode',
          highlight_info = 'RenderMarkdownCodeInfo',
          highlight_language = nil,
          highlight_border = 'RenderMarkdownCodeBorder',
          highlight_fallback = 'RenderMarkdownCodeFallback',
          highlight_inline = 'RenderMarkdownCodeInline',
          style = 'full',
        },
      })
    end,
  })
end)
