return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use { 'windwp/nvim-ts-autotag' }
  use { 'p00f/nvim-ts-rainbow' }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use { 'folke/which-key.nvim' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'

  use {
    "williamboman/nvim-lsp-installer",
  }

  use { 'jose-elias-alvarez/null-ls.nvim', config = "require('null-ls-config')" }

  use 'norcalli/nvim-colorizer.lua'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup { current_line_blame = true }
    end
  }

  use 'glepnir/dashboard-nvim'
  use "lukas-reineke/indent-blankline.nvim"

  use { "folke/zen-mode.nvim", config = 'require("zen-mode-config")' }

  use { "folke/twilight.nvim", config = "require('twilight-config')" }

  use { "akinsho/toggleterm.nvim", tag = 'v1.*' }
end)
