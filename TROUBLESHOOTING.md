# Neovim Treesitter Highlighting Issue - Troubleshooting

## Issue Summary
Treesitter syntax highlighting was not working for markdown files in Neovim 0.12.0-dev, despite parsers being installed and treesitter being properly configured.

## Root Cause
In Neovim 0.12.0-dev, simply enabling treesitter highlighting via `nvim-treesitter.configs.setup({ highlight = { enable = true } })` is **not sufficient** to activate highlighting. The treesitter highlighter must be **explicitly started** for each buffer.

## Key Discovery
- **Treesitter parsers were installed**: Located in `/home/ubuntu/.local/share/nvim/site/parser/`
- **Configuration was correct**: `nvim-treesitter.configs.setup()` ran successfully
- **Problem**: Treesitter highlighter was not being activated for buffers automatically

## Solution
The configuration requires **two separate files**:

### 1. `/after/plugin/treesitter.lua`
Configures the nvim-treesitter plugin:
```lua
configs.setup({
  ensure_installed = { 'markdown', 'markdown_inline', 'lua', 'vim' },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true, -- Important: provides fallback
  },
  indent = { enable = false },
})
```

### 2. `/after/plugin/treesitter-start.lua`
**Critical**: Explicitly starts treesitter for markdown files:
```lua
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function(args)
    if vim.treesitter.language.get_lang('markdown') then
      vim.treesitter.start(args.buf, 'markdown')
    end
  end,
})
```

## Why Two Files Are Necessary
1. **treesitter.lua**: Sets up the plugin configuration and modules
2. **treesitter-start.lua**: Ensures the highlighter is **actually started** via autocmd when opening markdown files

Without the autocmd in `treesitter-start.lua`, treesitter remains configured but inactive.

## What Didn't Work
- ❌ Setting `highlight.enable = true` alone
- ❌ Using `vim.cmd('syntax on')` (conflicts with treesitter)
- ❌ Calling `vim.treesitter.start()` globally without autocmd
- ❌ Moving config to `init.lua` with `vim.schedule()`
- ❌ Using `BufEnter`/`BufWinEnter` autocmds with file patterns (`*.md`)
- ❌ Disabling `additional_vim_regex_highlighting` (caused no fallback)

## What Worked
- ✅ Using `FileType` autocmd with pattern `'markdown'`
- ✅ Explicitly calling `vim.treesitter.start(args.buf, 'markdown')` in autocmd
- ✅ Keeping `additional_vim_regex_highlighting = true` for fallback
- ✅ Separate configuration and activation files

## Performance Optimizations Applied
Along with fixing highlighting, these performance settings were configured for ttyd (terminal over browser) usage on a high-resource server (24GB RAM, 4 CPUs):

- `updatetime = 500` - Balanced for network latency
- `conceallevel = 0` - Better syntax visibility
- `ttyfast = true` - Signal TTY capability
- `regexpengine = 2` - Faster regex for large files
- `synmaxcol = 300` - Prevent slowdown on long lines
- Removed `lazyredraw = true` - Was preventing syntax updates
- Removed global `syntax on` - Conflicts with treesitter

## Verification
To verify treesitter is active:
```bash
nvim /tmp/test.md
# In nvim:
:lua print(vim.treesitter.highlighter.active[vim.api.nvim_get_current_buf()] ~= nil)
# Should return: true
```

## Date Resolved
December 19, 2025
