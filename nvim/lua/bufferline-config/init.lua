require('bufferline').setup{
  diagnostics = "nvim_lsp",
}

vim.cmd [[
  nnoremap <silent><TAB> :BufferLineCycleNext<CR>
  nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]
