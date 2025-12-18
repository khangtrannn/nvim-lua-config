local ok, ts_config = pcall(require, "nvim-treesitter.config")
if not ok then
  return
end

ts_config.setup({
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "html",
    "latex",
    "yaml",

    "typescript",
    "javascript",
  },
  highlight = {
    enable = true,
  },
})
