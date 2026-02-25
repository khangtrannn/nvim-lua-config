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
local package_path_str = "/Users/khangtrann/.cache/nvim/packer_hererocks/2.1.1770848219/share/lua/5.1/?.lua;/Users/khangtrann/.cache/nvim/packer_hererocks/2.1.1770848219/share/lua/5.1/?/init.lua;/Users/khangtrann/.cache/nvim/packer_hererocks/2.1.1770848219/lib/luarocks/rocks-5.1/?.lua;/Users/khangtrann/.cache/nvim/packer_hererocks/2.1.1770848219/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/khangtrann/.cache/nvim/packer_hererocks/2.1.1770848219/lib/lua/5.1/?.so"
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
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["github-nvim-theme"] = {
    config = { "\27LJ\2\nj\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\1\0\1\16transparent\2\nsetup\17github-theme\frequire\0" },
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["mini.icons"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15mini.icons\frequire\0" },
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/mini.icons",
    url = "https://github.com/nvim-mini/mini.icons"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["obsidian.nvim"] = {
    config = { "\27LJ\2\nŽ\1\0\1\6\0\t\0\22\n\0\0\0X\1\14€\18\3\0\0009\1\0\0'\4\1\0'\5\2\0B\1\4\2\18\3\1\0009\1\0\1'\4\3\0'\5\4\0B\1\4\2\18\3\1\0009\1\5\1D\1\2\0X\1\5€6\1\6\0006\3\a\0009\3\b\3B\3\1\0C\1\0\0K\0\1\0\ttime\aos\rtostring\nlower\5\18[^A-Za-z0-9-]\6-\6 \tgsub²\1\0\1\t\0\b\0\0245\1\1\0009\2\0\0=\2\0\0019\2\2\0=\2\2\0019\2\3\0=\2\3\0019\2\4\0\n\2\0\0X\2\r€6\2\5\0009\2\6\0029\4\4\0B\2\2\2\14\0\2\0X\2\a€6\2\a\0009\4\4\0B\2\2\4H\5\1€<\6\5\1F\5\3\3R\5ý\127L\1\2\0\npairs\16tbl_isempty\bvim\rmetadata\ttags\faliases\1\0\3\ttags\0\faliases\0\ntitle\0\ntitleê\3\1\0\5\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\3\0005\4\6\0>\4\1\3=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0023\3\14\0=\3\15\0025\3\17\0003\4\16\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0\16frontmatter\tfunc\1\0\1\tfunc\0\0\17note_id_func\0\15completion\1\0\2\14min_chars\3\1\rnvim_cmp\2\14templates\1\0\3\16time_format\n%H:%M\vfolder\14templates\16date_format\r%Y-%m-%d\16daily_notes\1\0\2\16date_format\r%Y-%m-%d\vfolder\ndaily\15workspaces\1\0\2\tname\17second-brain\tpath\19~/second-brain\aui\1\0\1\venable\1\1\0\b\16frontmatter\0\15workspaces\0\15completion\0\20legacy_commands\1\17note_id_func\0\14templates\0\16daily_notes\0\aui\0\nsetup\robsidian\frequire\0" },
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/obsidian.nvim",
    url = "https://github.com/obsidian-nvim/obsidian.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["render-markdown.nvim"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/opt/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: obsidian.nvim
time([[Config for obsidian.nvim]], true)
try_loadstring("\27LJ\2\nŽ\1\0\1\6\0\t\0\22\n\0\0\0X\1\14€\18\3\0\0009\1\0\0'\4\1\0'\5\2\0B\1\4\2\18\3\1\0009\1\0\1'\4\3\0'\5\4\0B\1\4\2\18\3\1\0009\1\5\1D\1\2\0X\1\5€6\1\6\0006\3\a\0009\3\b\3B\3\1\0C\1\0\0K\0\1\0\ttime\aos\rtostring\nlower\5\18[^A-Za-z0-9-]\6-\6 \tgsub²\1\0\1\t\0\b\0\0245\1\1\0009\2\0\0=\2\0\0019\2\2\0=\2\2\0019\2\3\0=\2\3\0019\2\4\0\n\2\0\0X\2\r€6\2\5\0009\2\6\0029\4\4\0B\2\2\2\14\0\2\0X\2\a€6\2\a\0009\4\4\0B\2\2\4H\5\1€<\6\5\1F\5\3\3R\5ý\127L\1\2\0\npairs\16tbl_isempty\bvim\rmetadata\ttags\faliases\1\0\3\ttags\0\faliases\0\ntitle\0\ntitleê\3\1\0\5\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\3\0005\4\6\0>\4\1\3=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0023\3\14\0=\3\15\0025\3\17\0003\4\16\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0\16frontmatter\tfunc\1\0\1\tfunc\0\0\17note_id_func\0\15completion\1\0\2\14min_chars\3\1\rnvim_cmp\2\14templates\1\0\3\16time_format\n%H:%M\vfolder\14templates\16date_format\r%Y-%m-%d\16daily_notes\1\0\2\16date_format\r%Y-%m-%d\vfolder\ndaily\15workspaces\1\0\2\tname\17second-brain\tpath\19~/second-brain\aui\1\0\1\venable\1\1\0\b\16frontmatter\0\15workspaces\0\15completion\0\20legacy_commands\1\17note_id_func\0\14templates\0\16daily_notes\0\aui\0\nsetup\robsidian\frequire\0", "config", "obsidian.nvim")
time([[Config for obsidian.nvim]], false)
-- Config for: mini.icons
time([[Config for mini.icons]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15mini.icons\frequire\0", "config", "mini.icons")
time([[Config for mini.icons]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\2\nj\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\1\0\1\16transparent\2\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd render-markdown.nvim ]]
time([[Sequenced loading]], false)

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
