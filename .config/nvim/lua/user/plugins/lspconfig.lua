require('lspconfig').bashls.setup{}
require('lspconfig').elmls.setup{}
require('lspconfig').jsonls.setup{}
require('lspconfig').sumneko_lua.setup{
   settings = {
      Lua = {
         diagnostics = {
            globals = { 'vim' },
         },
      },
   },
}
require('lspconfig').pylsp.setup{}
