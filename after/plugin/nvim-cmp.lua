-- nvim-cmp configuration for completion
local cmp = require('cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }),
  
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  
  experimental = {
    ghost_text = true,
  },
})

-- Set up obsidian completion for markdown files
cmp.setup.filetype('markdown', {
  sources = cmp.config.sources({
    { name = 'obsidian' },
    { name = 'obsidian_new' },
    { name = 'obsidian_tags' },
    { name = 'buffer' },
    { name = 'path' },
  })
})
