return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "biome" },
				typescript = { "biome" },
				javascriptreact = { "biome" },
				typescriptreact = { "biome" },
				svelte = { "biome" },
				vue = { "biome" },
				css = { "prettier" },
				html = { "biome" },
				less = { "biome" },
				scss = { "biome" },
				markdown = { "biome" },
				json = { "biome" },
				yaml = { "biome" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			format_on_save = {
				lsp_fallback = false,
				async = false,
				timeout = 500,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>pf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout = 500,
			})
		end, { desc = "Format file or range" })
	end,
}
