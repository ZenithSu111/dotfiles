local keymap = vim.keymap
local opts = { noremap =true, silent = true}
--Esc
keymap.set("i", "jf",  "<Esc>")
--File
keymap.set("n", "<space>q", "<cmd>q<CR>")
keymap.set("n", "<space>w", "<cmd>w<CR>")
--Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
--motion
keymap.set("n", "E", "$")
keymap.set("n", "B", "^")
keymap.set("n", "+", "<C-a")
--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--Force quit
keymap.set("n", "Q", "<cmd>q!<CR>")
