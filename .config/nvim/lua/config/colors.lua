vim.g.nord_italic = false
vim.g.nord_contrast = true
vim.g.nord_bold = false
vim.g.nord_disable_background = true

require("catppuccin").setup({
	transparent_background = true,
	term_colors = true,
	no_italic = true,
	integrations = {
		gitsigns = true,
		cmp = true,
		telescope = true,
		treesitter = true,
		ts_rainbow = true,
		native_lsp = {
			enabled = true,
		},
	},
})

require("tokyonight").setup({
	styles = {
		comments = { italic = false },
		keywords = { italic = false },
		functions = { italic = false },
		variables = { italic = false },
	},
	transparent = true,
})

require("gruvbox").setup({
	italic = false,
	transparent_mode = true,
})

vim.cmd([[colorscheme nord]])
--[[ vim.api.nvim_set_hl(0, "Normal", { ctermbg = nil }) ]]
