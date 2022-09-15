vim.keymap.set('n', '<A-j>', '<cmd>lua vim.diagnostic.goto_next()<cr>')
vim.keymap.set('n', '<A-k>', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

local on_attach = function(_, bufnr)
   vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

   vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', { buffer = bufnr })
   vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', { buffer = bufnr })
   vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', { buffer = bufnr })
   vim.keymap.set('n', 'gr', ':Telescope lsp_references<cr>', { buffer = bufnr })
   vim.keymap.set('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<cr>', { buffer = bufnr })
   vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', { buffer = bufnr })
   vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { buffer = bufnr })
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
require('lspconfig').clangd.setup{}
