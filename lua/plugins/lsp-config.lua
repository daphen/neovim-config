return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- list of servers for mason to install
				ensure_installed = {
					"tsserver",
					"html",
					"cssls",
					"tailwindcss",
					"lua_ls",
					"emmet_ls",
					"svelte",
					"graphql",
					"pylsp",
					"volar",
					"glint",
					"biome",
				},
				-- auto-install configured servers (with lspconfig)
				automatic_installation = true, -- not the same as ensure_installed
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{ "antosha417/nvim-lsp-file-operations", config = true },
		},
		config = function()
			local lspconfig = require("lspconfig")
			local cmp_nvim_lsp = require("cmp_nvim_lsp")
			local capabilities = cmp_nvim_lsp.default_capabilities()

			-- Setup LSP servers

			-- html server
			lspconfig["html"].setup({
				capabilities = capabilities,
				filetypes = { "hbs" },
			})

			-- typescript server
			lspconfig["tsserver"].setup({
				capabilities = capabilities,
			})

			-- css server
			lspconfig["cssls"].setup({
				capabilities = capabilities,
				validate = true,
				settings = {
					css = {
						lint = {
							unknownAtRules = "ignore",
						},
					},
				},
			})

			-- vue server
			lspconfig["volar"].setup({
				capabilities = capabilities,
			})

			-- tailwindcss server
			lspconfig["tailwindcss"].setup({
				capabilities = capabilities,
			})

			-- python server
			lspconfig["pylsp"].setup({
				capabilities = capabilities,
			})

			-- svelte server
			lspconfig["svelte"].setup({
				capabilities = capabilities,
			})

			-- emmet language server
			lspconfig["emmet_ls"].setup({
				capabilities = capabilities,
				filetypes = {
					"html",
					"typescriptreact",
					"javascriptreact",
					"css",
					"sass",
					"scss",
					"less",
					"svelte",
				},
			})

			lspconfig["glint"].setup({
				capabilities = capabilities,
			})

			-- lua server
			lspconfig["lua_ls"].setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						telemetry = { enable = false },
						-- make the language server recognize "vim" global
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							checkThirdParty = false,
							-- make language server aware of runtime files
							library = {
								[vim.fn.expand("$VIMRUNTIME/lua")] = true,
								[vim.fn.stdpath("config") .. "/lua"] = true,
							},
						},
					},
				},
			})

			-- KEYMAPS
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show description" })
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to definition" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open diagnostics" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
			vim.keymap.set("n", "[d", vim.diagnostic.goto_next, { desc = "Go to next diagnostics" })
			vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { desc = "Go to prev diagnostics" })
		end,
	},
}
