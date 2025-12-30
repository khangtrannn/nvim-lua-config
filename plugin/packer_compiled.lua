-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/khangtrann/.cache/nvim/packer_hererocks/2.1.1765228720/share/lua/5.1/?.lua;/Users/khangtrann/.cache/nvim/packer_hererocks/2.1.1765228720/share/lua/5.1/?/init.lua;/Users/khangtrann/.cache/nvim/packer_hererocks/2.1.1765228720/lib/luarocks/rocks-5.1/?.lua;/Users/khangtrann/.cache/nvim/packer_hererocks/2.1.1765228720/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/khangtrann/.cache/nvim/packer_hererocks/2.1.1765228720/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mini.nvim"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/nvim-mini/mini.nvim"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["render-markdown.nvim"] = {
    config = { "\27LJ\2\nâ\b\0\0\5\0#\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0004\4\0\0=\4\a\3=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0005\4\14\0=\4\15\3=\3\16\0025\3\17\0005\4\18\0=\4\19\0035\4\20\0=\4\21\3=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0005\4 \0=\4!\3=\3\"\2B\0\2\1K\0\1\0\17anti_conceal\vignore\1\0\1\20code_background\2\1\0\2\vignore\0\fenabled\2\nimage\1\0\3\14max_width\3P\15max_height\3\20\fenabled\2\tlink\1\0\2\14hyperlink\1\fenabled\2\ntable\1\0\2\vpreset\nround\fenabled\2\nquote\1\0\2\ticon\b‚ñã\fenabled\2\rcheckbox\fchecked\1\0\2\ticon\t‚òë \14highlight\26RenderMarkdownChecked\14unchecked\1\0\2\ticon\t‚òê \14highlight\28RenderMarkdownUnchecked\1\0\3\14unchecked\0\fchecked\0\fenabled\2\vbullet\nicons\1\5\0\0\b‚óè\b‚óã\b‚óÜ\b‚óá\1\0\2\nicons\0\fenabled\2\tdash\1\0\3\nwidth\tfull\ticon\b‚îÄ\fenabled\2\tcode\1\0\n\23disable_background\1\rlanguage\2\fenabled\2\vborder\nthick\14min_width\3\0\14right_pad\3\0\rleft_pad\3\0\14highlight\23RenderMarkdownCode\nwidth\tfull\tsign\1\fheading\16backgrounds\1\0\3\16backgrounds\0\tsign\1\fenabled\2\18change_events\1\5\0\0\16BufWinEnter\16CursorMoved\16TextChanged\16WinScrolled\1\0\15\18change_events\0\rdebounce\3d\18max_file_size\4\0ÄÄ‡ˇ\3\fenabled\2\nquote\0\17anti_conceal\0\rcheckbox\0\tlink\0\nimage\0\tcode\0\17render_modes\2\fheading\0\vbullet\0\ntable\0\tdash\0\nsetup\20render-markdown\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/opt/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd render-markdown.nvim ]]

-- Config for: render-markdown.nvim
try_loadstring("\27LJ\2\nâ\b\0\0\5\0#\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0004\4\0\0=\4\a\3=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0005\4\14\0=\4\15\3=\3\16\0025\3\17\0005\4\18\0=\4\19\0035\4\20\0=\4\21\3=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0005\4 \0=\4!\3=\3\"\2B\0\2\1K\0\1\0\17anti_conceal\vignore\1\0\1\20code_background\2\1\0\2\vignore\0\fenabled\2\nimage\1\0\3\14max_width\3P\15max_height\3\20\fenabled\2\tlink\1\0\2\14hyperlink\1\fenabled\2\ntable\1\0\2\vpreset\nround\fenabled\2\nquote\1\0\2\ticon\b‚ñã\fenabled\2\rcheckbox\fchecked\1\0\2\ticon\t‚òë \14highlight\26RenderMarkdownChecked\14unchecked\1\0\2\ticon\t‚òê \14highlight\28RenderMarkdownUnchecked\1\0\3\14unchecked\0\fchecked\0\fenabled\2\vbullet\nicons\1\5\0\0\b‚óè\b‚óã\b‚óÜ\b‚óá\1\0\2\nicons\0\fenabled\2\tdash\1\0\3\nwidth\tfull\ticon\b‚îÄ\fenabled\2\tcode\1\0\n\23disable_background\1\rlanguage\2\fenabled\2\vborder\nthick\14min_width\3\0\14right_pad\3\0\rleft_pad\3\0\14highlight\23RenderMarkdownCode\nwidth\tfull\tsign\1\fheading\16backgrounds\1\0\3\16backgrounds\0\tsign\1\fenabled\2\18change_events\1\5\0\0\16BufWinEnter\16CursorMoved\16TextChanged\16WinScrolled\1\0\15\18change_events\0\rdebounce\3d\18max_file_size\4\0ÄÄ‡ˇ\3\fenabled\2\nquote\0\17anti_conceal\0\rcheckbox\0\tlink\0\nimage\0\tcode\0\17render_modes\2\fheading\0\vbullet\0\ntable\0\tdash\0\nsetup\20render-markdown\frequire\0", "config", "render-markdown.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
