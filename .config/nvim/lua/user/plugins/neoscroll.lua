require('neoscroll').setup()

require('neoscroll.config').set_mappings {
   ['<c-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '100' } },
   ['<c-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '100' } },
}
