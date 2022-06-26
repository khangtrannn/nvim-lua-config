return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use { 'rose-pine/neovim', config = "vim.cmd('colorscheme rose-pine')" }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    event = "BufWinEnter",
    config = "require('treesitter-config')"
  }

  use {
    'tamton-aquib/staline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    event = "BufWinEnter",
    config = "require('staline-config')"
  }

  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
    event = "BufWinEnter",
    config = "require('bufferline-config')"
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly',
    -- cmd = "NvimTreeToggle",
    config = "require('nvim-tree-config')"
  }

  use {
    'windwp/nvim-ts-autotag',
    event = 'InsertEnter',
    after = 'nvim-treesitter'
  }

  use {
    'p00f/nvim-ts-rainbow',
    after = 'nvim-treesitter'
  }

  use {
    "windwp/nvim-autopairs",
    config = "require('autopairs-config')",
    after = "nvim-cmp"
  }

  use {
    'folke/which-key.nvim',
    event = 'BufWinEnter',
    config = "require('whichkey-config')"
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    cmd = "Telescope",
    config = "require('telescope-config')"
  }

  use {
    'neovim/nvim-lspconfig',
    config = "require('lsp')"
  }

  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'onsails/lspkind-nvim' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }

  use { "williamboman/nvim-lsp-installer" }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = "require('null-ls-config')"
  }

  use {
    'norcalli/nvim-colorizer.lua',
    event = 'BufRead',
    config = "require('colorizer-config')"
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup { current_line_blame = true }
    end
  }

  use {
    'glepnir/dashboard-nvim',
    cmd = 'Dashboard',
    config = "require('dashboard-config')"
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    event = 'BufRead',
    config = "require('blankline-config')"
  }

  use {
    "folke/zen-mode.nvim",
    config = 'require("zen-mode-config")'
  }

  use {
    "folke/twilight.nvim",
    config = "require('twilight-config')"
  }

  use {
    "akinsho/toggleterm.nvim",
    tag = 'v1.*',
    config = "require('toggleterm-config')"
  }

  use {
    'terrortylor/nvim-comment',
    cmd = "CommandToggle",
    config = "require('comment-config')",
  }
end)
