vim.g.nvim_tree_width = 25

require 'nvim-tree'.setup { 
  open_on_setup = true,
  open_on_setup_file = true,
}

vim.cmd [[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
