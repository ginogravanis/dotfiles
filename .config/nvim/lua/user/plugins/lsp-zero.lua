local lsp = require('lsp-zero')
lsp.preset('recommended')
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
lsp.setup()

require('lspconfig').sumneko_lua.setup{
   settings = {
      Lua = {
         diagnostics = {
            globals = { 'vim' },
         },
      },
   },
}
