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
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({
				filters = {
					custom = { "^.git$" },
				},
			})
		end,
	},
	{
		"akinsho/bufferline.nvim",
		config = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					offsets = {
						{
							filetype = "NvimTree",
                            highlight = "NONE",
						},
					},
					always_show_bufferline = false,
					diagnostics = "nvim_lsp",
					indicator = {
						style = "none",
					},
					style_preset = bufferline.style_preset.no_italic,
					separator_style = { "", "" },
					color_icons = true,
				},
			})
            vim.cmd('highlight BufferLineFill guibg=NONE ctermbg=NONE')
		end,
	},
    {"zirrostig/vim-jack-syntax"}
}
