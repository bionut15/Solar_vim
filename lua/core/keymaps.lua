--keymappings 
local keymap = vim.keymap.set

vim.g.mapleader = " "
--Nvim Tree
keymap('n', '<leader>e',":NvimTreeToggle<cr>", opts)
keymap('n', '<leader>',":NvimTreeToggle<cr>", opts)
--Split
keymap('n', '<C-W>h', '<C-W>s', opts)
--navigation and better switching bettween windows
keymap('n', '<C-h>',"<C-W>h", opts)
keymap('n', '<C-j>',"<C-W>j", opts)
keymap('n', '<C-k>',"<C-W>k", opts)
keymap('n', '<C-l>',"<C-W>l", opts)
-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", opt)
keymap("n", "<Down>", ":resize +1<CR>", opt)
