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
        -- PERFORMANCE: Enable rendering with optimizations for cursor movement
        enabled = true,
        max_file_size = 1.5, -- MB, slightly increased for better experience

        -- PERFORMANCE: Throttle rendering during cursor movement
        debounce = 100, -- ms, reduces re-renders while moving cursor

        -- PERFORMANCE: Optimize rendering for markdown
        heading = {
          enabled = true,
          sign = true,
          backgrounds = { 'DiffAdd', 'DiffChange', 'DiffDelete' },
        },

        code = {
          enabled = true,
          sign = true,
          style = 'normal', -- Changed from 'full' for better performance
          left_pad = 1,     -- Reduced padding
          right_pad = 1,    -- Reduced padding
          min_width = 0,    -- No minimum width enforcement
          border = 'thin',
          above = '▄',
          below = '▀',
        },

        dash = {
          enabled = true,
          icon = '─',
          width = 'full',
        },

        bullet = {
          enabled = true,
          icons = { '●', '○', '◆', '◇' },
        },

        checkbox = {
          enabled = true,
          unchecked = { icon = '☐ ', highlight = 'RenderMarkdownUnchecked' },
          checked = { icon = '☑ ', highlight = 'RenderMarkdownChecked' },
        },

        quote = {
          enabled = true,
          icon = '▋',
        },

        table = {
          enabled = true,
          preset = 'round', -- Changed from 'grid' - lighter rendering
        },

        link = {
          enabled = true,
          hyperlink = false,
        },

        image = {
          enabled = true,
          max_width = 80,  -- Reduced from 100
          max_height = 20, -- Reduced from 30
        },

        -- PERFORMANCE: Optimize rendering pipeline
        render_modes = { 'n', 'c' }, -- Only render in normal and command mode, not insert
        anti_conceal = {
          enabled = true, -- Show raw markdown when cursor is on the line
        },
      })
    end,
  })
end)
