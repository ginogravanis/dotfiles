local keymap = require('user.lib.utils').keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

keymap('v', 'p', '"_dP')

keymap('n', '<Esc><Esc>', ':w<CR>')
keymap('n', '<leader>q', ':qa<CR>')

keymap('n', '<C-H>', '<C-W>h')
keymap('n', '<C-J>', '<C-W>j')
keymap('n', '<C-K>', '<C-W>k')
keymap('n', '<C-L>', '<C-W>l')
