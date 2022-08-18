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

-- telescope
keymap("n", "<C-p>", ":Telescope git_files previewer=false theme=dropdown<CR>", opts)
keymap("n", "<Leader>f", ":Telescope live_grep<CR>", opts)
keymap("n", "gr", ":Telescope lsp_references<CR>", opts)

-- lsp keymap
keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "<Leader>lh", ":lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "<Leader>lws", ":lua vim.lsp.buf.workspace_symbol()<CR>", opts)
keymap("n", "<Leader>lf", ":lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "<Leader>ln", ":lua vim.diagnostic.goto_next()<CR>", opts)
keymap("n", "<Leader>lp", ":lua vim.diagnostic.goto_prev()<CR>", opts)
keymap("n", "<Leader>lca", ":lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<Leader>lrr", ":lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<Leader>lrn", ":lua vim.lsp.buf.rename()<CR>", opts)

-- fugitive keymap
keymap("n", "<Leader>gs", ":G <CR>", opts)
keymap("n", "<Leader>gc", ":G commit <CR>", opts)

-- Neoformat
keymap("n", "<Leader>n", ":Neoformat <CR>", opts)

-- Git
keymap("n", "<leader>gj", ":diffget //3<CR>", opts)
keymap("n", "<leader>gf", ":diffget //2<CR>", opts)

-- increase number
keymap("n", "<C-s>", "<C-a>", opts)
keymap("i", "<C-c>", "<Esc>", opts)
