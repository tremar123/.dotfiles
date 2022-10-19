-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local lspconfig = require("lspconfig")

local signs = {
	{ name = "DiagnosticSignError", text = "" },
	{ name = "DiagnosticSignWarn", text = "" },
	{ name = "DiagnosticSignHint", text = "" },
	{ name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local function on_attach(client)
	if client.server_capabilities.colorProvider then
		require("document-color").buf_attach()
	end
	vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>", Keymap_opts)
	vim.keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", Keymap_opts)
	vim.keymap.set("n", "<Leader>lh", ":lua vim.lsp.buf.hover()<CR>", Keymap_opts)
	vim.keymap.set("n", "<Leader>lws", ":lua vim.lsp.buf.workspace_symbol()<CR>", Keymap_opts)
	vim.keymap.set("n", "<Leader>lf", ":lua vim.diagnostic.open_float()<CR>", Keymap_opts)
	vim.keymap.set("n", "<Leader>ln", ":lua vim.diagnostic.goto_next()<CR>", Keymap_opts)
	vim.keymap.set("n", "<Leader>lp", ":lua vim.diagnostic.goto_prev()<CR>", Keymap_opts)
	vim.keymap.set("n", "<Leader>lca", ":lua vim.lsp.buf.code_action()<CR>", Keymap_opts)
	vim.keymap.set("n", "<Leader>lrr", ":lua vim.lsp.buf.references()<CR>", Keymap_opts)
	vim.keymap.set("n", "<Leader>lrn", ":lua vim.lsp.buf.rename()<CR>", Keymap_opts)
end

lspconfig.html.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.cssls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.rust_analyzer.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.jsonls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.gopls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.prismals.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.tailwindcss.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.astro.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.eslint.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.sumneko_lua.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lspconfig.dockerls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.yamlls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.ansiblels.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		ansible = {
			validation = {
				lint = {
					enabled = false,
				},
			},
		},
	},
})

lspconfig.clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
