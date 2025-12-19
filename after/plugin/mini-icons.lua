local ok, icons = pcall(require, "mini.icons")
if not ok then
  return
end

-- PERFORMANCE: Basic setup without forced options
icons.setup()
