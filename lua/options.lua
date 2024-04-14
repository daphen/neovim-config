local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

opt.scrolloff = 8

-- tabs & indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Sync clipboard between OS and Neovim.
opt.clipboard = "unnamedplus"

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true

opt.backspace = "indent,eol,start"

-- Move cursor to the perceived new split when opening it
opt.splitright = true
opt.splitbelow = true
