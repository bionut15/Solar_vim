--plugin manager with lazy

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
	{"ellisonleao/gruvbox.nvim", priority = 1000},
	{'nvim-lualine/lualine.nvim',
	dependencies = {'nvim-tree/nvim-web-devicons',},
	},
	{"nvim-tree/nvim-tree.lua",
	dependencies = {"nvim-tree/nvim-web-devicons",},
	},
	--Nvim CMP 
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	--LSP
	'williamboman/mason-lspconfig.nvim',
	'williamboman/mason.nvim',
	'neovim/nvim-lspconfig',
	--Snippit plugin
	'saadparwaiz1/cmp_luasnip',
	'rafamadriz/friendly-snippets',
	{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "2.*",  
	build = "make install_jsregexp"},
	{'windwp/nvim-autopairs',
    	event = "InsertEnter", },
	{
  		'glepnir/dashboard-nvim',
  		event = 'VimEnter',
  		config = function()
    		require('dashboard').setup {
		}end,
  		dependencies = { {'nvim-tree/nvim-web-devicons'}}
	}
}
local opt = {
}
require("lazy").setup(plugins, opts)
