require('nvim-tree').setup({
   disable_netrw = true,
   hijack_cursor = true,
   prefer_startup_root = true,
   sync_root_with_cwd = true,
   reload_on_bufenter = true,
   update_focused_file = {
      enable = true,
   },
   git = {
      ignore = false,
   },
   renderer = {
      add_trailing = true,
      group_empty = true,
      full_name = true,
      highlight_git = true,
      indent_markers = {
         enable = true,
      },
      icons = {
         show = {
            folder_arrow = false,
         },
      },
   },
   filters = {
      dotfiles = true,
   },
})

vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<cr>')
