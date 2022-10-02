require("Comment").setup{}

vim.cmd([[
let g:user_emmet_install_global = 0
autocmd FileType html,php,astro,javascript,javascriptreact,typescript,typescriptreact EmmetInstall
]])
