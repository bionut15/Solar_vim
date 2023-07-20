local db = require('dashboard')

  db.setup({
    theme = 'hyper',
    config = {
	header ={
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
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' LazyGit',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'l',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
	packages = { enable = false},
	footer = {},
    },
  })

