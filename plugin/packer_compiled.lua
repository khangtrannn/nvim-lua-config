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
local package_path_str = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
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
  ["github-nvim-theme"] = {
    config = { "\27LJ\2\na\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\16transparent\1\nsetup\17github-theme\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["obsidian.nvim"] = {
    config = { "\27LJ\2\n‹\3\0\1\b\0\19\00045\1\1\0009\2\0\0=\2\2\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1K\0\1\0 <cmd>ObsidianFollowLink<CR>\15<leader>of\27<cmd>ObsidianToday<CR>\15<leader>ot\25<cmd>ObsidianNew<CR>\15<leader>on!<cmd>ObsidianQuickSwitch<CR>\15<leader>oq\28<cmd>ObsidianSearch<CR>\15<leader>os\26<cmd>ObsidianOpen<CR>\15<leader>oo\6n\bset\vkeymap\bvim\vbuffer\1\0\2\vsilent\2\fnoremap\2\bbufú\3\1\0\6\0\23\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0005\3\16\0B\0\3\0026\1\f\0009\1\r\0019\1\17\1'\3\18\0005\4\19\0=\0\20\0043\5\21\0=\5\22\4B\1\3\1K\0\1\0\rcallback\0\ngroup\1\0\1\fpattern\rmarkdown\rFileType\24nvim_create_autocmd\1\0\1\nclear\2\20ObsidianKeymaps\24nvim_create_augroup\bapi\bvim\aui\1\0\1\venable\2\15completion\1\0\1\rnvim_cmp\1\16daily_notes\1\0\1\vfolder\ndaily\15workspaces\1\0\1\17notes_subdir\5\1\0\2\tpath\19~/second-brain\tname\17second-brain\nsetup\robsidian\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/obsidian.nvim",
    url = "https://github.com/epwalsh/obsidian.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: obsidian.nvim
time([[Config for obsidian.nvim]], true)
try_loadstring("\27LJ\2\n‹\3\0\1\b\0\19\00045\1\1\0009\2\0\0=\2\2\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1K\0\1\0 <cmd>ObsidianFollowLink<CR>\15<leader>of\27<cmd>ObsidianToday<CR>\15<leader>ot\25<cmd>ObsidianNew<CR>\15<leader>on!<cmd>ObsidianQuickSwitch<CR>\15<leader>oq\28<cmd>ObsidianSearch<CR>\15<leader>os\26<cmd>ObsidianOpen<CR>\15<leader>oo\6n\bset\vkeymap\bvim\vbuffer\1\0\2\vsilent\2\fnoremap\2\bbufú\3\1\0\6\0\23\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0005\3\16\0B\0\3\0026\1\f\0009\1\r\0019\1\17\1'\3\18\0005\4\19\0=\0\20\0043\5\21\0=\5\22\4B\1\3\1K\0\1\0\rcallback\0\ngroup\1\0\1\fpattern\rmarkdown\rFileType\24nvim_create_autocmd\1\0\1\nclear\2\20ObsidianKeymaps\24nvim_create_augroup\bapi\bvim\aui\1\0\1\venable\2\15completion\1\0\1\rnvim_cmp\1\16daily_notes\1\0\1\vfolder\ndaily\15workspaces\1\0\1\17notes_subdir\5\1\0\2\tpath\19~/second-brain\tname\17second-brain\nsetup\robsidian\frequire\0", "config", "obsidian.nvim")
time([[Config for obsidian.nvim]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\2\na\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\16transparent\1\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)

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
