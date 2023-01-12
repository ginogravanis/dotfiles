local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup()

telescope.load_extension('fzf')
telescope.load_extension('live_grep_args')

vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
vim.keymap.set('n', '<leader>.s', builtin.grep_string, {})
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<c-p>', builtin.git_files, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
