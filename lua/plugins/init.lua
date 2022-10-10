-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  	-- Packer can manage itself
  	use ('wbthomason/packer.nvim') --Admin pack

        use('neovim/nvim-lspconfig') --LSP
	
	-- Use Neovim as a language server to inject LSP diagnostics, 
	-- code actions, and more via Lua
	use('jose-elias-alvarez/null-ls.nvim')
	-- use('MunifTanjim/prettier.nvim')
        
	use {
  		'kyazdani42/nvim-tree.lua',
  		requires = {
    			'kyazdani42/nvim-web-devicons', -- optional, for file icons
  		},
  		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	} -- Files tree

	use { 'kyazdani42/nvim-web-devicons' } -- Files icons
	use { 'nvim-lua/plenary.nvim' }

	-- Finding files, buffers and text
	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.0', 
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { 'nvim-telescope/telescope-file-browser.nvim' }

	-- Statusline
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	--Auto complete
	use "hrsh7th/nvim-cmp"

	-- Move between buffers
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

	-- Help to move between tabs of bufferline
	use 'tiagovla/scope.nvim'

	-- colorizer html
	use 'norcalli/nvim-colorizer.lua'

	-- toggleterm
	use { "akinsho/toggleterm.nvim", tag = '*' }

	-- Theme

	-- onedarkpro
	-- use 'olimorris/onedarkpro.nvim'

	-- nightfox
	use 'EdenEast/nightfox.nvim'

	-- End of Theme
	
	--lspkind
	use { 'onsails/lspkind-nvim' }

	-- nvim-treesitter
	use {    
    		'nvim-treesitter/nvim-treesitter',
    		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	use 'L3MON4D3/LuaSnip'
	use 'windwp/nvim-ts-autotag' --Depending of treesitter

end)
