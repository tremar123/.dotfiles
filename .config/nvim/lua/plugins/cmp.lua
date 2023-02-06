return {
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-path",
			"onsails/lspkind-nvim",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"windwp/nvim-autopairs",
		},
		config = function()
			local luasnip = require("luasnip")
			require("luasnip.loaders.from_vscode").lazy_load()

			-- nvim-cmp setup
			local lspkind = require("lspkind")
			local cmp = require("cmp")
			cmp.setup({
				formatting = {
					format = function(_, vim_item)
						vim_item.kind = lspkind.presets.default[vim_item.kind]
						vim_item.menu = ""
						return vim_item
					end,
				},
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = {
					["<C-p>"] = cmp.mapping.select_prev_item(),
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-d>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.close(),
					["<CR>"] = cmp.mapping.confirm({
						behavior = cmp.ConfirmBehavior.Replace,
						select = true,
					}),
					["<Tab>"] = function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end,
					["<S-Tab>"] = function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end,
				},
				sources = {
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "path" },
				},
			})

			local unlinkgrp = vim.api.nvim_create_augroup("UnlinkSnippetOnModeChange", { clear = true })

			vim.api.nvim_create_autocmd("ModeChanged", {
				group = unlinkgrp,
				pattern = { "s:n", "i:*" },
				desc = "Forget the current snippet when leaving the insert mode",
				callback = function(evt)
					if
						luasnip.session
						and luasnip.session.current_nodes[evt.buf]
						and not luasnip.session.jump_active
					then
						luasnip.unlink_current()
					end
				end,
			})

			local npairs = require("nvim-autopairs")

			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local cmp = require("cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))

			npairs.setup({
				ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]], "%s+", " "),
			})
		end,
	},
}
