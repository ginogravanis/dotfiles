local keymap = require('user.lib.utils').keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

keymap('v', 'p', '"_dP')

keymap('n', '<esc><esc>', ':w<cr>')
keymap('n', '<leader>q', ':qa<cr>')

keymap('n', '<c-h>', '<c-w>h')
keymap('n', '<c-j>', '<c-w>j')
keymap('n', '<c-k>', '<c-w>k')
keymap('n', '<c-l>', '<c-w>l')
