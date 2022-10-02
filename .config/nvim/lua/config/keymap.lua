local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd(":command! -bar -bang Q quit<bang>")
vim.cmd(":command W w")

keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- open explorer
keymap("n", "<Leader>e", ":Lex 30<CR>", opts)

-- buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprev<CR>", opts)

-- visual - change indent
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text
keymap("v", "<A-j>", ":move '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":move '<-2<CR>gv=gv", opts)

-- don't copy replaced word
keymap("v", "p", '"_dP', opts)
keymap("n", "d", '"_d', opts)
keymap("n", "x", '"_x', opts)

-- fugitive keymap
keymap("n", "<Leader>gs", ":G <CR>", opts)
keymap("n", "<Leader>gc", ":G commit <CR>", opts)
keymap("n", "<leader>gj", ":diffget //3<CR>", opts)
keymap("n", "<leader>gf", ":diffget //2<CR>", opts)

keymap("i", "<C-c>", "<Esc>", opts)
