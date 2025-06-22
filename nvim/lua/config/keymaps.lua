local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "jf", "<Esc>", opts)
map("i", "fj", "<Esc>", opts)

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

vim.opt.whichwrap:append("<>[]hl") -- 允許左右鍵跨行
map("", "j", "gj", opts)           -- 用 gj/gk 替代 j/k（處理折行）
map("", "k", "gk", opts)

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("n", "Q", "<nop>")
