local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'projekt0n/github-nvim-theme',
    config = function()
      require('github-theme').setup({
        options = {
          transparent = false,
        },
      })
    end,
  }

  use { 'nvim-lua/plenary.nvim' }

  use {
    'epwalsh/obsidian.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('obsidian').setup({
        workspaces = {
          { name = 'second-brain', path = '~/second-brain' },
        },
        notes_subdir = '',
        daily_notes = { folder = 'daily' },
        completion = { nvim_cmp = false },
        ui = { enable = true },
      })

      local group = vim.api.nvim_create_augroup('ObsidianKeymaps', { clear = true })
      vim.api.nvim_create_autocmd('FileType', {
        group = group,
        pattern = 'markdown',
        callback = function(args)
          local opts = { buffer = args.buf, silent = true, noremap = true }
          vim.keymap.set('n', '<leader>oo', '<cmd>ObsidianOpen<CR>', opts)
          vim.keymap.set('n', '<leader>os', '<cmd>ObsidianSearch<CR>', opts)
          vim.keymap.set('n', '<leader>oq', '<cmd>ObsidianQuickSwitch<CR>', opts)
          vim.keymap.set('n', '<leader>on', '<cmd>ObsidianNew<CR>', opts)
          vim.keymap.set('n', '<leader>ot', '<cmd>ObsidianToday<CR>', opts)
          vim.keymap.set('n', '<leader>of', '<cmd>ObsidianFollowLink<CR>', opts)
        end,
      })
    end,
  }
end)
