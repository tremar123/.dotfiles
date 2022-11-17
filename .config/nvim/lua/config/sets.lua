vim.opt.syntax = "on"
vim.opt.showmode = false
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undo"
vim.opt.undofile = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.scrolloff = 6
vim.opt.sidescrolloff = 15
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.pumheight = 10
vim.opt.signcolumn = "yes"
vim.opt.hlsearch = false
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.g.netrw_banner = 0

vim.cmd([[
let g:neoformat_try_node_exe = 1
let g:neoformat_enabled_yaml = ["prettier"]
filetype plugin on
filetype indent plugin on
autocmd BufRead,BufEnter *.astro set filetype=astro

let g:user_emmet_install_global = 0
autocmd FileType html,php,astro,javascript,javascriptreact,typescript,typescriptreact EmmetInstall
]])
