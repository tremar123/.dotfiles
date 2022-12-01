Keymap_opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd(":command! -bar -bang Q quit<bang>")
vim.cmd(":command W w")

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", Keymap_opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", Keymap_opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", Keymap_opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", Keymap_opts)

-- open explorer
vim.keymap.set("n", "<Leader>e", ":Lex 30<CR>", Keymap_opts)

-- buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", Keymap_opts)
vim.keymap.set("n", "<S-h>", ":bprev<CR>", Keymap_opts)

-- visual - change indent
vim.keymap.set("v", "<", "<gv", Keymap_opts)
vim.keymap.set("v", ">", ">gv", Keymap_opts)

-- move text
vim.keymap.set("v", "<A-j>", ":move '>+1<CR>gv=gv", Keymap_opts)
vim.keymap.set("v", "<A-k>", ":move '<-2<CR>gv=gv", Keymap_opts)

-- don't copy replaced word
vim.keymap.set("v", "p", '"_dP', Keymap_opts)
vim.keymap.set("n", "d", '"_d', Keymap_opts)
vim.keymap.set("n", "x", '"_x', Keymap_opts)

-- telescope
vim.keymap.set("n", "<C-p>", ":Telescope git_files previewer=false theme=dropdown<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>f", ":Telescope live_grep<CR>", Keymap_opts)
vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", Keymap_opts)

-- fugitive vim.keymap.set
vim.keymap.set("n", "<Leader>gs", ":G <CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gc", ":G commit <CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gj", ":diffget //3<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gf", ":diffget //2<CR>", Keymap_opts)

-- Neoformat
vim.keymap.set("n", "<Leader>n", ":Neoformat <CR>", Keymap_opts)

-- increase number
vim.keymap.set("i", "<C-c>", "<Esc>", Keymap_opts)

-- git signs
vim.keymap.set("n", "<Leader>gts", ":Gitsigns toggle_signs<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gtl", ":Gitsigns toggle_linehl<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gtd", ":Gitsigns toggle_word_diff<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gtb", ":Gitsigns toggle_current_line_blame<CR>", Keymap_opts)
