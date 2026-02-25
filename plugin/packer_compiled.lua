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
  ["render-markdown.nvim"] = {
    config = { "\27LJ\2\nÝ\5\0\0\a\0\31\0B6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0015\0\b\0006\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\f\0005\5\14\0009\6\r\0=\6\15\5B\1\4\0016\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\16\0005\5\18\0009\6\17\0=\6\15\5B\1\4\0016\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\19\0005\5\21\0009\6\20\0=\6\15\5B\1\4\0016\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\22\0005\5\24\0009\6\23\0=\6\15\5B\1\4\0016\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\25\0005\5\27\0009\6\26\0=\6\15\5B\1\4\0016\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\28\0005\5\30\0009\6\29\0=\6\15\5B\1\4\1K\0\1\0\1\0\1\abg\0\ah6\23RenderMarkdownH6Bg\1\0\1\abg\0\ah5\23RenderMarkdownH5Bg\1\0\1\abg\0\ah4\23RenderMarkdownH4Bg\1\0\1\abg\0\ah3\23RenderMarkdownH3Bg\1\0\1\abg\0\ah2\23RenderMarkdownH2Bg\abg\1\0\1\abg\0\ah1\23RenderMarkdownH1Bg\16nvim_set_hl\bapi\bvim\1\0\6\ah5\f#2d2a1f\ah3\f#2d231f\ah6\f#1f2d2d\ah2\f#1c2d1f\ah1\f#1f2d3d\ah4\f#2d1f2a\fheading\1\0\1\fheading\0\16backgrounds\1\0\1\16backgrounds\0\1\a\0\0\23RenderMarkdownH1Bg\23RenderMarkdownH2Bg\23RenderMarkdownH3Bg\23RenderMarkdownH4Bg\23RenderMarkdownH5Bg\23RenderMarkdownH6Bg\nsetup\20render-markdown\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/khangtrann/.local/share/nvim/site/pack/packer/opt/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  }
}

time([[Defining packer_plugins]], false)
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

-- Config for: render-markdown.nvim
try_loadstring("\27LJ\2\nÝ\5\0\0\a\0\31\0B6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0015\0\b\0006\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\f\0005\5\14\0009\6\r\0=\6\15\5B\1\4\0016\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\16\0005\5\18\0009\6\17\0=\6\15\5B\1\4\0016\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\19\0005\5\21\0009\6\20\0=\6\15\5B\1\4\0016\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\22\0005\5\24\0009\6\23\0=\6\15\5B\1\4\0016\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\25\0005\5\27\0009\6\26\0=\6\15\5B\1\4\0016\1\t\0009\1\n\0019\1\v\1)\3\0\0'\4\28\0005\5\30\0009\6\29\0=\6\15\5B\1\4\1K\0\1\0\1\0\1\abg\0\ah6\23RenderMarkdownH6Bg\1\0\1\abg\0\ah5\23RenderMarkdownH5Bg\1\0\1\abg\0\ah4\23RenderMarkdownH4Bg\1\0\1\abg\0\ah3\23RenderMarkdownH3Bg\1\0\1\abg\0\ah2\23RenderMarkdownH2Bg\abg\1\0\1\abg\0\ah1\23RenderMarkdownH1Bg\16nvim_set_hl\bapi\bvim\1\0\6\ah5\f#2d2a1f\ah3\f#2d231f\ah6\f#1f2d2d\ah2\f#1c2d1f\ah1\f#1f2d3d\ah4\f#2d1f2a\fheading\1\0\1\fheading\0\16backgrounds\1\0\1\16backgrounds\0\1\a\0\0\23RenderMarkdownH1Bg\23RenderMarkdownH2Bg\23RenderMarkdownH3Bg\23RenderMarkdownH4Bg\23RenderMarkdownH5Bg\23RenderMarkdownH6Bg\nsetup\20render-markdown\frequire\0", "config", "render-markdown.nvim")

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
