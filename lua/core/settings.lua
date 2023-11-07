--making a simple alias
local command = vim.api.nvim_command
	
--Cursor line
command('set cursorline')
command('set cursorcolumn')
command('set noshowmode')
command('set laststatus=0')

--Tabs settings to work normally
command('set tabstop=8')
command('set shiftwidth=8')
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

vim.cmd [[
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc() "weird code i found on github hope it fucking works
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!make test"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!time java -cp %:p:h %:t:r"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python3  %"
elseif &filetype == 'html'
exec "!firefox % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc
]]
