local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- Here comes the plugins
local plugins = {
	--Theme
	{'xiyaowong/transparent.nvim'},
	{'sainnhe/everforest',
      lazy = false,
      priority = 1000,},
	{"ellisonleao/gruvbox.nvim", priority = 1000},
	{"catppuccin/nvim", name = "catppuccin", priority = 1000},
	{'https://gitlab.com/yorickpeterse/vim-paper.git'},
	{ "EdenEast/nightfox.nvim" },
	--Statusline
	{'nvim-lualine/lualine.nvim',
	dependencies = {'nvim-tree/nvim-web-devicons',},
	},
	--File explorer and fzf
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	'junegunn/fzf',
	{"nvim-tree/nvim-tree.lua",
	dependencies = {"nvim-tree/nvim-web-devicons",},
	},
	'nvim-treesitter/nvim-treesitter',
	--Preetier
	'neovim/nvim-lspconfig',
	'jose-elias-alvarez/null-ls.nvim',
	'MunifTanjim/prettier.nvim',
	--Nvim CMP
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	--LazyGit
	'kdheepak/lazygit.nvim',
	--LSP
	'williamboman/mason-lspconfig.nvim',
	'williamboman/mason.nvim',
	'neovim/nvim-lspconfig',
	'nvim-lua/plenary.nvim',
	--Snippit plugin
	'saadparwaiz1/cmp_luasnip',
	'rafamadriz/friendly-snippets',
	{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
	},
	--Autopairs
	{'windwp/nvim-autopairs',
    	event = "InsertEnter", },
	{
  		'glepnir/dashboard-nvim',
  		event = 'VimEnter',
  		config = function()
    		require('dashboard').setup {
		}end,
  		dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
	'lervag/vimtex',
}
local opt = {
}
require("lazy").setup(plugins, opts)
