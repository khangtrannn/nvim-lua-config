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
          sign = true,
          style = 'normal',
          position = 'left',
          language_pad = 0,
          disable_background = {},
          width = 'full',
          left_pad = 1,
          right_pad = 1,
          min_width = 0,
          border = 'thin',
          above = '▄',
          below = '▀',
          highlight = 'RenderMarkdownCode',
        },
      })
    end,
  })
end)
