Keymap_opts = { noremap = true, silent = true }

vim.g.maplocalleader = " "

vim.cmd(":command! -bar -bang Q quit<bang>")
vim.cmd(":command W w")

-- insert single char
-- please somebody explain why this works with pressing TAB!
vim.keymap.set("n", "<C-i>", '"=nr2char(getchar())<cr>P', Keymap_opts)

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", Keymap_opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", Keymap_opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", Keymap_opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", Keymap_opts)

-- open explorer
vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<CR>", Keymap_opts)

-- buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", Keymap_opts)
vim.keymap.set("n", "<S-h>", ":bprev<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>bd", ":bd<CR>", Keymap_opts)

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
vim.keymap.set("n", "<Leader>k", ":Telescope keymaps<CR>", Keymap_opts)

-- fugitive vim.keymap.set
vim.keymap.set("n", "<Leader>gs", ":G <CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gc", ":G commit <CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gj", ":diffget //3<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gf", ":diffget //2<CR>", Keymap_opts)

-- Neoformat
vim.keymap.set("n", "<Leader>n", ":Neoformat <CR>", Keymap_opts)

vim.keymap.set("i", "<C-c>", "<Esc>", Keymap_opts)

-- git signs
vim.keymap.set("n", "<Leader>gts", ":Gitsigns toggle_signs<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gtl", ":Gitsigns toggle_linehl<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gtd", ":Gitsigns toggle_word_diff<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>gtb", ":Gitsigns toggle_current_line_blame<CR>", Keymap_opts)

-- debuggin
vim.keymap.set("n", "<F5>", ":lua require('dap').restart()<CR>", Keymap_opts)
vim.keymap.set("n", "<F8>", ":lua require('dap').continue()<CR>", Keymap_opts)
vim.keymap.set("n", "<F10>", ":lua require('dap').step_over()<CR>", Keymap_opts)
vim.keymap.set("n", "<F11>", ":lua require('dap').step_into()<CR>", Keymap_opts)
vim.keymap.set("n", "<F23>", ":lua require('dap').step_out()<CR>", Keymap_opts)
vim.keymap.set("n", "<F12>", ":lua require('dap').terminate()<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>db", ":lua require('dap').toggle_breakpoint()<CR>", Keymap_opts)
vim.keymap.set(
	"n",
	"<Leader>B",
	":lua require('dap').set_breakpoint(vim.fn.input('Break condition: '))<CR>",
	Keymap_opts
)
vim.keymap.set("n", "<Leader>dr", ":lua require('dap').repl.open()<CR>", Keymap_opts)
vim.keymap.set("n", "<Leader>dd", ":lua require('dapui').toggle()<CR>", Keymap_opts)

-- tabs
vim.keymap.set("n", "<Leader>t", ":tabnew<CR>", Keymap_opts)

vim.keymap.set("n", "<Leader>u", ":UndotreeToggle<CR>", Keymap_opts)
