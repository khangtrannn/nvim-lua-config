-- Minimal Neovim entrypoint for Obsidian-focused workflow

-- Leader
vim.g.mapleader = ' '

-- Core options (kept intentionally lean)
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.signcolumn = 'yes'
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- PERFORMANCE OPTIMIZATION FOR TTYD + High Resource Server (24GB RAM, 4CPUs)
-- Optimized for cursor movement smoothness
vim.opt.updatetime = 300

-- Reduced for snappier key response
vim.opt.timeoutlen = 500

vim.opt.clipboard = 'unnamedplus'

-- PERFORMANCE: Set conceallevel to 0 for better syntax visibility
-- render-markdown handles its own concealment for markdown elements
vim.opt.conceallevel = 0

-- PERFORMANCE: Signal TTY is capable for better buffering
vim.opt.ttyfast = true

-- PERFORMANCE: Use faster regex engine (v2 is better for large files)
vim.opt.regexpengine = 2

-- PERFORMANCE: Increase synmaxcol to prevent slowdown on long lines
vim.opt.synmaxcol = 500

-- PERFORMANCE: Disable swap files for faster operations
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- PERFORMANCE: Keep more lines in memory
vim.opt.history = 1000
vim.opt.undolevels = 1000

-- PERFORMANCE: Faster screen redraws
vim.opt.lazyredraw = true

-- PERFORMANCE: Reduce CursorHold event frequency
vim.opt.updatecount = 0

vim.opt.guifont = 'JetBrainsMono Nerd Font:h14'

-- Navigate wrapped lines visually
vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true })

-- Load plugins
require('plugins')

-- Colorscheme (Tokyonight)
pcall(vim.cmd.colorscheme, 'tokyonight-night')

-- Enhance code block background visibility for render-markdown
-- Using darker backgrounds that contrast with tokyonight-night (#1a1b26 base)
vim.api.nvim_set_hl(0, 'RenderMarkdownCode', { bg = '#16161e' })
vim.api.nvim_set_hl(0, 'RenderMarkdownCodeInline', { bg = '#292e42' })
