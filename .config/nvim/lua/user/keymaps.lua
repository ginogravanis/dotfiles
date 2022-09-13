vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

vim.keymap.set('v', 'p', '"_dP')

vim.keymap.set('n', '<esc><esc>', ':w<cr>')
vim.keymap.set('n', '<leader>q', ':qa<cr>')
vim.keymap.set('n', '<leader>Q', ':qa!<cr>')

vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-l>', '<c-w>l')
