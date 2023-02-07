return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "jdtls" },
				automatic_installation = true,
			})
			require("mason-tool-installer").setup({
				ensure_installed = {
					"stylua",
					"prettier",
					"delve",
					"autopep8",
					"codelldb",
					"java-debug-adapter",
					"java-test",
					"debugpy",
					"bash-debug-adapter",
					"netcoredbg",
				},
				run_on_start = false,
			})
		end,
	},
}
