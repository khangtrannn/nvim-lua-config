return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- =========================
  -- Tree-sitter (required)
  -- =========================
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })

  -- =========================
  -- Icons (recommended)
  -- =========================
  use("nvim-tree/nvim-web-devicons")

  -- =========================
  -- Markdown rendering
  -- =========================
  use({
    "MeanderingProgrammer/render-markdown.nvim",
    after = "nvim-treesitter",
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("render-markdown").setup({})
    end,
  })
end)
