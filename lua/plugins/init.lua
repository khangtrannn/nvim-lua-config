return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  -- Colorscheme
  use({
    'projekt0n/github-nvim-theme',
    config = function()
      require('github-theme').setup({
        options = {
          transparent = true,
        },
      })
    end,
  })

  use({
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
  })

  use({
    'nvim-mini/mini.icons',
    config = function()
      require('mini.icons').setup({})
    end
  })

  -- Completion plugin
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')

  use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'nvim-mini/mini.icons' },
  })

  use({
    'obsidian-nvim/obsidian.nvim',
    requires = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('obsidian').setup({
        legacy_commands = false,
        ui = { enable = false },
        workspaces = {
          { name = "second-brain", path = "~/second-brain" },
        },
        completion = {
          nvim_cmp = true,
          match_case = false,
          create_new = true,
        },
      })
    end,
  })

end)
