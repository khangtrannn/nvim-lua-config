local ENABLED_FILETYPES = { 'javascript', 'typescript', 'lua', 'markdown' }

vim.api.nvim_create_autocmd('FileType', {
  pattern = ENABLED_FILETYPES,
  callback = function(args)
    vim.treesitter.start(args.buf)
  end,
})
