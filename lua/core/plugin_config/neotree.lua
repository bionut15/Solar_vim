-- disable netrw at the very start of your init.lua

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	create_in_closed_folder = true,
	hijack_cursor = true,
	focus_empty_on_setup = true,
	sync_root_with_cwd = true,
	renderer = {
		full_name = true,
		group_empty = true,
		special_files = {},
		symlink_destination = false,
		indent_markers = {
			enable = true,
		},
		icons = {
			git_placement = "signcolumn",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
		},
	},

	diagnostics = {
		enable = true,
		show_on_dirs = true,
	},
	--	view = {
	--		width = 35,
	--		mappings = {
	--			list = {
	--				{ key = { "<2-RightMouse>", "<C-]>" }, action = "" }, -- cd
	--				{ key = "<C-v>",                       action = "" }, -- vsplit
	--				{ key = "<C-h>",                       action = "" }, -- split
	--				{ key = "<C-t>",                       action = "" }, -- tabnew
	--				{ key = "<BS>",                        action = "" }, -- close_node
	--				{ key = "<Tab>",                       action = "" }, -- preview
	--				{ key = "D",                           action = "" }, -- trash
	--				{ key = "[e",                          action = "" }, -- prev_diag_item
	--				{ key = "]e",                          action = "" }, -- next_diag_item
	--				{ key = "[c",                          action = "" }, -- prev_git_item
	--				{ key = "]c",                          action = "" }, -- next_git_item
	--				{ key = "-",                           action = "" }, -- dir_up
	--				{ key = "d",                           action = "cd" }, -- remove
	--				{ key = "x",                           action = "remove" }, -- cut
	--				{ key = "t",                           action = "cut" },
	--			},
	--		},
	--	},
	filters = {
		dotfiles = true,
	},
})
