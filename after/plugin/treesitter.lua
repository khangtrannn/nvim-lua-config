local ok, ts_config = pcall(require, "nvim-treesitter.config")
if not ok then
  return
end

ts_config.setup({
  ensure_installed = {
    "html",
    "typescript",
    "javascript",
  },
  highlight = {
    enable = true,
  },
})
