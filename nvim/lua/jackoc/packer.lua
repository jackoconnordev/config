-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} } 
  }

  use {'ray-x/starry.nvim', setup = function() 
	  -- see example setup below
	  vim.g.starry_italic_comments = true
	  vim.g.starry_disable_background = true
	  vim.g.starry_style = 'slate'
	  vim.g.starry_set_hl = true
  end}

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')

  use('theprimeagen/harpoon')

  use 'mbbill/undotree'

  use 'fladson/vim-kitty'

  use 'tpope/vim-fugitive'

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

  use {'ellisonleao/glow.nvim', config = function() require('glow').setup() end}

  use {
	'windwp/nvim-autopairs',

  }

  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup({
        filetypes = { 'html' , 'xml', 'astro', 'tsx' }
      })
    end
  }

  use {
    'nvim-neorg/neorg',
    run = ':Neorg sync-parsers', -- This is the important bit!
    config = function()
        require('neorg').setup {
            -- configuration here
        }
    end,
  }

  use 'nvim-telescope/telescope-media-files.nvim'

end)
