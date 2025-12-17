vim.diagnostic.config({
  underline = true,
  virtual_text = {
    spacing = 5,
    severity = { min = vim.diagnostic.severity.WARN },
  },
  update_in_insert = false,
})

require 'nvim-treesitter.configs'.setup {
  ensure_installed = { 'html', 'javascript', 'typescript', 'lua', 'java', 'scss', 'css', 'vim' },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true
  },
  autopairs = {
    enable = true
  }
}
