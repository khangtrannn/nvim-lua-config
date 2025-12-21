local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end

-- High-performance treesitter configuration for markdown-heavy workload
configs.setup({
  -- Install and maintain these parsers
  ensure_installed = { 'markdown', 'markdown_inline', 'lua', 'vim', 'java' },

  -- Auto-sync parser updates
  auto_install = true,
  sync_install = false,

  -- PERFORMANCE: Enable treesitter-based highlighting
  highlight = {
    enable = true,
    -- Disable regex highlighting for better performance
    additional_vim_regex_highlighting = false,
    -- Disable for very large files
    disable = function(lang, buf)
      local max_filesize = 500 * 1024 -- 500 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,
  },

  -- PERFORMANCE: Disable indentation module - can cause issues with markdown
  indent = {
    enable = false,
  },

  -- PERFORMANCE: Enable incremental selection for smoother cursor movement
  incremental_selection = {
    enable = true,
  },
})
