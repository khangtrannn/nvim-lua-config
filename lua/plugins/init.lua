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

  -- Telescope fuzzy finder
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    requires = { "nvim-lua/plenary.nvim" },
  })

  -- Telescope FZF native for better performance
  use({
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
  })

  -- Markdown preview in browser
  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = { "markdown" },
  })

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
          width = 'full',
          left_pad = 0,
          right_pad = 0,
          min_width = 0,
          border = 'thick',
          language = true,
          disable_background = false,
          highlight = 'RenderMarkdownCode',
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
          ignore = {
            code_background = true, -- Always show code background even on cursor line
          },
        },
      })
    end,
  })
end)
