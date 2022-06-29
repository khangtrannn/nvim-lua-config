local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting

null_ls.setup({
  sources = {
    formatting.prettier,
    formatting.lua_format.with({
      extra_args = {
        '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
        '--break-after-table-lb', '--indent-width=2'
      }
    }),
    formatting.codespell.with({ filetypes = { 'markdown' } })
  },
  on_attach = function(client)
    -- Find the clients capabilities
    local cap = client.resolved_capabilities

    -- Only highlight if compatible with the language
    if cap.document_highlight then
      vim.cmd('augroup LspHighlight')
      vim.cmd('autocmd!')
      vim.cmd('autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()')
      vim.cmd('autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()')
      vim.cmd('augroup END')
    end
  end
})
