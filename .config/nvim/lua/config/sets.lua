vim.opt.syntax="on"

-- vim.opt.noshowmode = true
vim.opt.number= true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab= true
vim.opt.smartindent= true
--vim.opt.nowrap= true
--vim.opt.noswapfile= true
--vim.opt.nobackup= true
vim.opt.undodir=os.getenv("HOME") .. "/.cache/nvim/undo"
vim.opt.undofile= true
vim.opt.smartcase= true
vim.opt.ignorecase= true
vim.opt.incsearch= true
vim.opt.mouse=a
-- vim.opt.clipboard
vim.opt.splitbelow= true
vim.opt.splitright= true
vim.opt.scrolloff=6
vim.opt.sidescrolloff=15
vim.opt.completeopt=menu,menuone,noselect
vim.opt.pumheight=10
vim.opt.signcolumn="yes"
--vim.opt.nohlsearch= true
vim.opt.exrc= true

vim.cmd([[colorscheme gruvbox]])
