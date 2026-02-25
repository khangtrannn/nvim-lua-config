-- Enable treesitter highlighting for Neovim 0.10+
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'javascript', 'typescript', 'lua', 'markdown' },
  callback = function(args)
    vim.treesitter.start(args.buf)
  end,
})
