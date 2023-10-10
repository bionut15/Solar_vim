currentHour = tonumber(os.date("%H"))

if 8 < currentHour and currentHour <= 12 then
	vim.cmd.colorscheme "gruvbox"
	vim.o.background = "light"
elseif 12 < currentHour and currentHour <= 17 then
	vim.cmd.colorscheme "dawnfox"
elseif 17 < currentHour  and currentHour <= 19 then
	vim.cmd.colorscheme "gruvbox"
	vim.o.background = "dark"
elseif 19 < currentHour and currentHour <= 23 then
	vim.cmd.colorscheme "nightfox"
else 
	vim.cmd.colorscheme "nightfox"
end
