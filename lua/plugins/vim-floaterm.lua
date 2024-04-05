return {
	"voldikss/vim-floaterm",
	config = function()
		vim.keymap.set(
			{ "n", "t" },
			"<leader>tn",
			"<C-\\><C-n><CMD>FloatermNew<CR>",
			{ desc = "Create New terminal Window" }
		)

		vim.keymap.set(
			{ "n", "t" },
			"<C-t>",
			"<C-\\><C-n><CMD>FloatermToggle!<CR>",
			{ desc = "Toggle terminal window" }
		)

		vim.keymap.set(
			{ "n", "t" },
			"<leader>tx",
			"<C-\\><C-n><CMD>FloatermKill<CR>",
			{ desc = "Kill terminal windows" }
		)

		vim.keymap.set({ "t" }, "<C-d>", "<C-\\><C-n><CMD>FloatermNext<CR>", { desc = "Next terminal Window" })

		vim.keymap.set({ "t" }, "<C-a>", "<C-\\><C-n><CMD>FloatermPrev<CR>", { desc = "Prev terminal Window" })
	end,
}
