vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.keymap.set
local opt = { noremap = true, silent = true }
--Esc
map("i", "jf", "<Esc>")
map("i", "fj", "<Esc>")

--reload config
map("n", ",%", ":source%<CR>")
--Window moveing
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-l>", "<C-w>l", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)

--savefile
map("n", ",w", ":w<CR>", opt)
map("n", ",q", ":q<CR>", opt)
--add Window
map("n", "<leader>wv", ":vs<CR>", opt)
map("n", "<leader>ws", ":sp<CR>", opt)

map("v", "<S-J>", ":m '>+1<CR>gv=gv", opt)
map("v", "<S-K>", ":m '<-2<CR>gv=gv", opt)
--open terminal
map("n", "<C-\\>", function()
	vim.cmd("botright split")
	vim.cmd("resize 5")
	vim.cmd("terminal")
	vim.cmd("startinsert")
end, opt)
map("t", "jf", "<C-\\><C-n>", opt)
map("n", "<C-Up>", ":resize +2<CR>", opt)
map("n", "<C-Down>", ":resize -2<CR>", opt)
