return 
{ "nvim-tree/nvim-tree.lua", 
dependencies = { "nvim-tree/nvim-web-devicons" } ,
opts = {
sort_by = "case_sensitive",
	hijack_cursor = true,
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
		enable = false,
		show_on_dirs = true,
	},
	filters = {
		dotfiles = true,
	},
},

}
