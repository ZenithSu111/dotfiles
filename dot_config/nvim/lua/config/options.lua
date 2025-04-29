vim.opt.number = true         -- 顯示行號
vim.opt.relativenumber = true -- 顯示相對行號，方便跳轉
vim.opt.cursorline = true     -- 突顯當前行
vim.opt.signcolumn = "yes"    -- 永遠顯示符號欄，避免畫面跳動
vim.opt.scrolloff = 8         -- 滾動時上下保留 8 行
vim.opt.sidescrolloff = 8     -- 左右滾動時保留 8 列
vim.opt.sidescroll = 1        -- 一次只橫移1格 避免畫面左右晃動
vim.opt.wrap = false          -- 不自動換行
vim.opt.mouse = "a"           -- 啟用滑鼠操作

vim.opt.wildmenu = false      -- 避免:會出現歷史命令清單

vim.opt.tabstop = 2           -- Tab 寬度為 4 空格
vim.opt.shiftwidth = 2        -- >> << 操作時移動 4 空格
vim.opt.softtabstop = 2       -- 按下 Tab 鍵時插入 4 空格
vim.opt.expandtab = true      -- 將 Tab 轉換為空格
vim.opt.smartindent = true    -- 根據語法自動縮排
vim.opt.autoindent = true     -- 自動繼承前一行的縮排
vim.opt.colorcolumn = "100"

vim.opt.ignorecase = true         -- 搜尋時忽略大小寫
vim.opt.smartcase = true          -- 若搜尋包含大寫字母，則區分大小寫
vim.opt.incsearch = true          -- 輸入搜尋時即時顯示匹配結果
vim.opt.hlsearch = true           -- 高亮顯示搜尋結果
vim.opt.inccommand = "split"      -- 即時預覽替換結果，使用分割視窗顯示

vim.opt.swapfile = false          -- 不建立 swap 檔
vim.opt.backup = false            -- 不建立備份檔
vim.opt.undofile = true           -- 啟用持久化 undo，重啟後仍可復原

vim.opt.clipboard = "unnamedplus" -- 使用系統剪貼簿
vim.opt.termguicolors = true      -- 啟用 24 位元真彩色

vim.opt.list = true               -- 顯示不可見字元
vim.opt.listchars = {
    tab = "» ",
    trail = "·",
    nbsp = "␣",
}

vim.opt.lazyredraw = true                                   -- 執行巨集時不重繪，提升效能
vim.opt.updatetime = 300                                    -- CursorHold 事件觸發時間（毫秒）

vim.opt.completeopt = { "menuone", "noinsert", "noselect" } -- 補全選項設定
