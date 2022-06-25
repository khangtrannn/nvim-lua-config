require('nvim-treesitter.configs').setup {
  ensure_installed = { 'html', 'javascript', 'typescript', 'lua', 'java', 'scss', 'css' },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
}
