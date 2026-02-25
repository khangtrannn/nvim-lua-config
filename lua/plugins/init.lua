return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  use({
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end
  })

  use({
    'nvim-mini/mini.icons',
    config = function()
      require('mini.icons').setup({})
    end
  })

  use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'nvim-mini/mini.icons' },
    config = function()
      require('render-markdown').setup({
        code = {
          disable_background = true,
        },
        heading = {
          backgrounds = {},
        },
      })
    end,
  })

end)
