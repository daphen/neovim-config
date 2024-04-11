vim.g.mapleader = " "

local keymap = vim.keymap

-- center cursor after jumping vertically
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- center cursor after search
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- x key does not copy deleted character to register
keymap.set("n", "x", '"_x')

-- split screen nav
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- split screen actions
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- resize splits
keymap.set("n", "<leader>s'", "<cmd>vertical resize +15<CR>")
keymap.set("n", "<leader>s;", "<cmd>vertical resize -15<CR>")
keymap.set("n", "<leader>s[", "<cmd>horizontal resize -15<CR>")
keymap.set("n", "<leader>s/", "<cmd>horizontal resize +15<CR>")

-- move highlighted
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- we have telescope fuzzy find in current buffer on / so we're remapping normal search
-- keymap.set("n", "<leader>/", "/")

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
