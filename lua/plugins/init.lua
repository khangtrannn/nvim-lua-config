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
      require("render-markdown").setup({})
    end,
  })
end)
