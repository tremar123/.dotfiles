local config = {
	cmd = {
		"jdtls",
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xms1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
	},
	root_dir = vim.fs.dirname(vim.fs.find({ ".gradlew", ".git", "mvnw" }, { upward = true })[1]),
	on_attach = function(_)
		local keymap_opts = { noremap = true, silent = true }

		vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>", keymap_opts)
		vim.keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", keymap_opts)
		vim.keymap.set("n", "<Leader>lh", ":lua vim.lsp.buf.hover()<CR>", keymap_opts)
		vim.keymap.set("n", "<Leader>lws", ":lua vim.lsp.buf.workspace_symbol()<CR>", keymap_opts)
		vim.keymap.set("n", "<Leader>lf", ":lua vim.diagnostic.open_float()<CR>", keymap_opts)
		vim.keymap.set("n", "<Leader>ln", ":lua vim.diagnostic.goto_next()<CR>", keymap_opts)
		vim.keymap.set("n", "<Leader>lp", ":lua vim.diagnostic.goto_prev()<CR>", keymap_opts)
		vim.keymap.set("n", "<Leader>lca", ":lua vim.lsp.buf.code_action()<CR>", keymap_opts)
		vim.keymap.set("n", "<Leader>lrr", ":lua vim.lsp.buf.references()<CR>", keymap_opts)
		vim.keymap.set("n", "<Leader>lrn", ":lua vim.lsp.buf.rename()<CR>", keymap_opts)

		vim.keymap.set("n", "<Leader>n", ":lua vim.lsp.buf.format()<CR>", keymap_opts)

		require("jdtls").setup_dap({ hotcodereplace = "auto" })
		require("jdtls.dap").setup_dap_main_class_configs()
	end,
	init_options = {
		bundles = {
			vim.fn.glob(vim.fn.stdpath("data") .. "/mason/packages/java-debug-adapter/extension/server/*.jar", 1),
			vim.fn.glob(vim.fn.stdpath("data") .. "/mason/packages/java-test/extension/server/*.jar", 1),
		},
	},
}
require("jdtls").start_or_attach(config)
