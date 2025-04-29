local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

vim.opt.whichwrap:append("<>[]hl") -- 允許左右鍵跨行
map("", "j", "gj", opts)           -- 用 gj/gk 替代 j/k（處理折行）
map("", "k", "gk", opts)

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
