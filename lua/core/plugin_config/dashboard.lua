local db = require("dashboard")

db.setup({
	theme = "hyper",
	config = {
		header = {
			[[]],
			[[░██████╗░█████╗░██╗░░░░░░█████╗░██████╗░  ███╗░░██╗██╗░░░██╗██╗███╗░░░███╗]],
			[[██╔════╝██╔══██╗██║░░░░░██╔══██╗██╔══██╗  ████╗░██║██║░░░██║██║████╗░████║]],
			[[╚█████╗░██║░░██║██║░░░░░███████║██████╔╝  ██╔██╗██║╚██╗░██╔╝██║██╔████╔██║]],
			[[░╚═══██╗██║░░██║██║░░░░░██╔══██║██╔══██╗  ██║╚████║░╚████╔╝░██║██║╚██╔╝██║]],
			[[██████╔╝╚█████╔╝███████╗██║░░██║██║░░██║  ██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║]],
			[[╚═════╝░░╚════╝░╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝  ╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝]],
			[[]],
			[[PRO Tip: To exit Neovim unplug ur computer(alias for :q!)]],
			[[]],
		},
		week_header = {
			enable = false,
		},
		shortcut = {
			{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
			{
				icon_hl = "@variable",
				desc = " FuzzyFinder",
				group = "Label",
				action = "FZF",
				key = "f",
			},
			{
				desc = " LazyGit",
				group = "DiagnosticHint",
				action = "LazyGit",
				key = "l",
			},
			{
				desc = "To Do",
				group = "Number",
				action = "",
				key = "d",
			},
		},
		packages = { enable = true },
		footer = {},
	},
})
