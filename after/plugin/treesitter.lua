local ok, treesitter = pcall(require, "nvim-treesitter")
if not ok then
  return
end

-- Install parsers
treesitter.install({ 'html', 'typescript', 'javascript', 'markdown', 'markdown_inline' })

-- Enable treesitter highlighting for markdown files
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'markdown' },
  callback = function()
    vim.treesitter.start()
  end,
})

-- Enable treesitter highlighting for other filetypes
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'html', 'typescript', 'javascript' },
  callback = function()
    vim.treesitter.start()
  end,
})
