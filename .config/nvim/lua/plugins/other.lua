return {
	{ "sbdchd/neoformat", event = "VeryLazy" },
	"editorconfig/editorconfig-vim",
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup()
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = {
						-- i want to ignore images by file extension, but have no idea how to do it in lua regexp
					},
				},
			})
		end,
	},

	{
		"mattn/emmet-vim",
		ft = {
			"html",
			"php",
			"astro",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
		},
	},

	{
		"pearofducks/ansible-vim",
		ft = "yaml.ansible",
	},

	{
		"dstein64/vim-startuptime",
		cmd = "StartupTime",
	},

	{
		"numToStr/Comment.nvim",
		opts = {
			pre_hook = function(ctx)
				local U = require("Comment.utils")

				local location = nil
				if ctx.ctype == U.ctype.block then
					location = require("ts_context_commentstring.utils").get_cursor_location()
				elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
					location = require("ts_context_commentstring.utils").get_visual_start_location()
				end

				return require("ts_context_commentstring.internal").calculate_commentstring({
					key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
					location = location,
				})
			end,
		},
	},
	{ "mfussenegger/nvim-jdtls", ft = { "java" } },
	{ "mbbill/undotree", event = "VeryLazy" },
}
