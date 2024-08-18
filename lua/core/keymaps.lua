--keymappings
local keymap = vim.keymap.set
vim.g.mapleader = " "

--preferance
keymap("n", "<leader>w", ":w<cr>", opts)
--god know how much i miss this
keymap("n", "<S-Tab>", ":bnext<cr>", opts)
--Nvim Tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
--Split
keymap("n", "<C-W>h", "<C-W>s", opts)
--navigation and better switching bettween windows
keymap("n", "<C-h>", "<C-W>h", opts)
keymap("n", "<C-j>", "<C-W>j", opts)
keymap("n", "<C-k>", "<C-W>k", opts)
keymap("n", "<C-l>", "<C-W>l", opts)
-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", opt)
keymap("n", "<Down>", ":resize +1<CR>", opt)
--telescope
keymap("n", "<leader>t", ":Telescope find_files <CR>")

--moving lines
keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("n", "J", "mzJ`z")
--good
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
--Making and executable
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
