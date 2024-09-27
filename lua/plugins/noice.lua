return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
	},
	require("noice").setup({
		presets = {
			lsp_doc_border = true, -- add a border to hover docs and signature help
		},
	}),

	vim.keymap.set("n", "<leader>ne", function()
		require("noice").cmd("errors")
	end),
}
