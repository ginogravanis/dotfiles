-- Install packer
local is_bootstrap = false
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
   is_bootstrap = true
   vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
   vim.cmd [[packadd packer.nvim]]
end

-- Initialise packer
require('packer').init({
   display = {
      open_fn = function()
         return require('packer.util').float({ border = 'solid' })
      end,
   },
})

-- Install plugins
local use = require('packer').use

use('wbthomason/packer.nvim')
use('gpanders/editorconfig.nvim')
use('tpope/vim-eunuch')
use('tpope/vim-sleuth')
use('nelstrom/vim-visual-star-search')

use {
   'VonHeikemen/lsp-zero.nvim',
   requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      -- Snippet Collection (Optional)
      {'rafamadriz/friendly-snippets'},
   },
   config = function()
      --require('user.plugins.lspconfig')
      require('user.plugins.lsp-zero')
   end,
}

use {
   'ellisonleao/gruvbox.nvim',
   config = function()
      vim.cmd('colorscheme gruvbox')
   end,
}

use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons',
  },
  config = function()
     require('user.plugins.nvim-tree')
  end,
}

use {
  'airblade/vim-rooter',
  setup = function()
    vim.g.rooter_patterns = { '.git', '.editorconfig', '>dev', '>.config', '.config'  }
  end,
}

use {
   'phaazon/hop.nvim',
   config = function()
      require('user.plugins.hop')
   end,
}

use {
   'karb94/neoscroll.nvim',
   config = function()
      require('user.plugins.neoscroll')
   end,
}

use {
   'nvim-telescope/telescope.nvim',
   requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'kyazdani42/nvim-web-devicons' },
      { 'nvim-telescope/telescope-live-grep-args.nvim' },
      { 'nvim-treesitter/nvim-treesitter' },
   },
   config = function()
      require('user.plugins.telescope')
   end,
}

-- Automatically install plugins on first run
if is_bootstrap then
   require('packer').sync()
end

-- Automatically regenerate compiled loader file on save
vim.cmd([[
   augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
   augroup end
]])
