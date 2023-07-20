--making a simple alias
local command = vim.api.nvim_command
	
--Cursor line
command('set cursorline')
command('set cursorcolumn')
command('set noshowmode')
command('set laststatus=0')

--Tabs settings to work normally
command('set tabstop=6')
command('set shiftwidth=6')
--command('set softtabstop')

--Number line 
command('set relativenumber')
command('set number')

-- Enable sane clipboard usage
command('set clipboard+=unnamedplus')
command('set listchars=tab:¦ ')

-- Show matches when seacrhing
command('set showmatch')
command('set nohlsearch')

-- Make tabs visible
command('set listchars=tab:¦ ')
