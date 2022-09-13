local buf_option = vim.api.nvim_buf_set_option
local buf_keymap = require('user.lib.utils').buf_keymap

local on_attach = function(_, bufnr)
   buf_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

   buf_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
   buf_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
   buf_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
   buf_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
   buf_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>')
   buf_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
end

require('lspconfig').bashls.setup{
   on_attach = on_attach,
}
require('lspconfig').elmls.setup{
   on_attach = on_attach,
}
require('lspconfig').jsonls.setup{
   on_attach = on_attach,
}
require('lspconfig').sumneko_lua.setup{
   on_attach = on_attach,
   settings = {
      Lua = {
         diagnostics = {
            globals = { 'vim' },
         },
      },
   },
}
require('lspconfig').pylsp.setup{
   on_attach = on_attach,
}
