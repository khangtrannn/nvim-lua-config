local ok, icons = pcall(require, "mini.icons")
if not ok then
  return
end

icons.setup()
