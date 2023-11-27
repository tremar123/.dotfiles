return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
        priority = 60,
		config = function()
			require("mason").setup()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"ansible-language-server",
					"astro-language-server",
					"autopep8",
					"awk-language-server",
					"bash-debug-adapter",
					"bash-language-server",
					"clangd",
					"codelldb",
					"css-lsp",
					"debugpy",
					"delve",
					"dockerfile-language-server",
					"eslint-lsp",
					"gopls",
					"html-lsp",
					"java-debug-adapter",
					"java-test",
					"jdtls",
					"json-lsp",
					"lua-language-server",
					"netcoredbg",
					"omnisharp",
					"prettier",
					"prisma-language-server",
					"pyright",
					"rust-analyzer",
					"stylua",
					"tailwindcss-language-server",
					"typescript-language-server",
					"yaml-language-server",
                    "vue-language-server",
				},
				run_on_start = false,
			})
		end,
	},
}
