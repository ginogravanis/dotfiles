require('hop').setup()

vim.api.nvim_set_keymap('n', '<leader>h', ":HopWord<cr>", { silent = true, noremap = true })
