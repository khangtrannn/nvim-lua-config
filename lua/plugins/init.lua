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
        max_file_size = 1.5,
        debounce = 100,

        -- CRITICAL: Remove ModeChanged to prevent flicker when switching modes
        -- This keeps rendering consistent between insert/normal/visual modes
        change_events = {
          'BufWinEnter',
          'CursorMoved',
          'TextChanged',
          'WinScrolled',
        },

        -- PERFORMANCE: Optimize rendering for markdown
        heading = {
          enabled = true,
          sign = false,
          backgrounds = {},
        },

        code = {
          enabled = true,
          sign = false,
          style = 'full', -- This automatically sets all the right defaults
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
          preset = 'round',
        },

        link = {
          enabled = true,
          hyperlink = false,
        },

        image = {
          enabled = true,
          max_width = 80,
          max_height = 20,
        },

        -- PERFORMANCE: Keep rendering consistent across modes to avoid flicker
        -- Only show raw text on the cursor line, not whole buffer
        render_modes = true, -- Render in all modes for consistency
        anti_conceal = {
          enabled = true, -- Show raw markdown only on cursor line for editing
        },
      })
    end,
  })
end)
