return {
	{
		"shaunsingh/nord.nvim",
		lazy = true,
		config = function()
			vim.g.nord_italic = false
			vim.g.nord_contrast = true
			vim.g.nord_bold = false
			vim.g.nord_disable_background = true
		end,
	},

	{
		"catppuccin/nvim",
		lazy = true,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				term_colors = true,
				no_italic = true,
				custom_highlights = function(colors)
					return {
						NormalFloat = { bg = colors.base },
						Pmenu = { bg = colors.base },
					}
				end,
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
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = {
			styles = {
				comments = { italic = false },
				keywords = { italic = false },
				functions = { italic = false },
				variables = { italic = false },
			},
			transparent = true,
		},
	},

	{
		"ellisonleao/gruvbox.nvim",
		lazy = true,
		opts = {
			italic = {
				strings = false,
				operators = false,
				comments = false,
				fold = false,
			},
			transparent_mode = true,
            overrides = {
                NormalFloat = { bg = "#3c3836" },
                Pmenu = { bg = "#3c3836" },
            }
		},
	},

	{ "mrshmllow/document-color.nvim", lazy = true, opts = {
		mode = "foreground",
	} },
}
