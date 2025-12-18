local ok, statusline = pcall(require, "mini.statusline")
if not ok then
  return
end

statusline.setup({
  use_icons = true,
  content = {
    active = nil,
    inactive = nil,
  },
})
