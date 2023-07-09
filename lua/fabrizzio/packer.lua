-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself

	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use { "ellisonleao/gruvbox.nvim" }
	use { "rebelot/kanagawa.nvim" }
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use("nvim-lua/plenary.nvim")
	use("ThePrimeagen/harpoon")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{                         -- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },  -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'L3MON4D3/LuaSnip' },  -- Required
		},
		use {
			'nvim-tree/nvim-tree.lua',
			requires = {
				'nvim-tree/nvim-web-devicons', -- optional
			},
		},
		use { "nvim-lualine/lualine.nvim",
			requires = { "nvim-tree/nvim-web-devicons", opt = true } },
		use 'onsails/lspkind-nvim', -- vscode-like pictograms
		use 'hrsh7th/cmp-buffer', -- nvim-cmp source for buffer words
		use 'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim's built-in LSP
		use 'hrsh7th/nvim-cmp',   -- Completion
		use({
			"glepnir/lspsaga.nvim",
			opt = true,
			branch = "main",
			event = "LspAttach",
			config = function()
				require("lspsaga").setup({})
			end,
			requires = {
				{ "nvim-tree/nvim-web-devicons" },
				--Please make sure you install markdown and markdown_inline parser
				{ "nvim-treesitter/nvim-treesitter" }
			}
		}),
		use {
			"windwp/nvim-autopairs",
			config = function() require("nvim-autopairs").setup {} end
		},
		use { "folke/zen-mode.nvim" },
		use { "akinsho/toggleterm.nvim", tag = '*', config = function()
			require("toggleterm").setup()
		end },
		use {
			"folke/which-key.nvim",
			config = function()
				vim.o.timeout = true
				vim.o.timeoutlen = 300
				require("which-key").setup {
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				}
			end
		},
		use { "windwp/nvim-ts-autotag" },
		use {'NvChad/nvim-colorizer.lua'}
	}
end)
