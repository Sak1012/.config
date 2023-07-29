vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	      'nvim-tree/nvim-tree.lua',
	      requires = {
	        'nvim-tree/nvim-web-devicons', 
	      },
	      tag = 'nightly' 
	    }

	    use { 'feline-nvim/feline.nvim', branch = '0.5-compat' }
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use { "ellisonleao/gruvbox.nvim" }
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('theprimeagen/harpoon')
use ('andweeb/presence.nvim')
use('nvim-treesitter/playground')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use('folke/tokyonight.nvim')
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
end)
