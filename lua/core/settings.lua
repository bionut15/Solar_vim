--making a simple alias
local command = vim.api.nvim_command

--Cursor line
command("set cursorline")
command("set cursorcolumn")
command("set noshowmode")
command("set laststatus=0")
command("set scrolloff=8")

--Tabs settings to work normally
command("set tabstop=6")
command("set shiftwidth=6")
command("set softtabstop")

--Number line
command("set relativenumber")
command("set number")

-- Enable sane clipboard usage
command("set clipboard+=unnamedplus")
vim.opt.listchars = {
	eol = " ",
	space = " ",
	trail = " ",
	extends = "▶",
	precedes = "◀",
}
vim.opt.list = true

-- Show matches when seacrhing
command("set showmatch")
command("set nohlsearch")

-- Make tabs visible
vim.cmd([[	set list lcs=tab:\┃ 
		set encoding=utf-8
		set list
		set cursorline
		set cursorcolumn
]])

vim.cmd([[
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
elseif &filetype == 'rust'
exec "!cargo run"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'lua'
exec "!love ."
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
]])
