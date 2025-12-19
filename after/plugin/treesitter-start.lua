-- Ensure treesitter is properly enabled for markdown files
local group = vim.api.nvim_create_augroup('TreesitterMarkdown', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  group = group,
  callback = function(args)
    -- Try to start treesitter if parser is available
    if vim.treesitter.language.get_lang('markdown') then
      vim.treesitter.start(args.buf, 'markdown')
    end
  end,
})
