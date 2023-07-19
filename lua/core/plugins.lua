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
	-- Language Support
    	{
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
		}
    	},
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