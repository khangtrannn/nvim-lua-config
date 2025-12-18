-- Minimal Neovim entrypoint for Obsidian-focused workflow

-- Leader
vim.g.mapleader = ' '

-- Core options (kept intentionally lean)
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.wrap = false
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.signcolumn = 'yes'
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 300
vim.opt.timeoutlen = 400
vim.opt.clipboard = 'unnamedplus'
vim.opt.conceallevel = 2
vim.opt.guifont = 'JetBrainsMono Nerd Font:h14'

-- Load plugins
require('plugins')

-- Colorscheme (Tokyonight)
pcall(vim.cmd.colorscheme, 'tokyonight-night')
