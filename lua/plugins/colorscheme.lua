return {
	-- "catppuccin/nvim",
	-- lazy = false,
	-- name = "catppuccin",
	-- priority = 1000,
	-- config = function()
	--   vim.cmd.colorscheme "catppuccin"
	-- end
	"daphen/colorscheme",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("rose-pine")
	end,
}
