
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = function()
		local actions = require("telescope.actions")
		return {
			defaults = {
				mappings = {
					i = {
						["<C-h>"] = "which_key",
						["<esc>"] = actions.close,
					},
					n = {
						["q"] = actions.close,
					},
				},
			},
			pickers = {},
			extensions = {},
		}
	end,
}

