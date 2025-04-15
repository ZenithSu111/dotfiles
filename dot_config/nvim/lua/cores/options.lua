-- 確保 Neovim 版本 >= 0.8
if vim.fn.has("nvim-0.8") == 0 then
  vim.api.nvim_err_writeln("low neovim version, update to 0.8+ version. ")
  return
end

local opt = vim.opt

--設定------------------------------------------------------------------------------------------------------

-- 文字編輯體驗
opt.number = true         -- 顯示行號
opt.relativenumber = true -- 顯示相對行號
opt.cursorline = true     -- 高亮當前行
opt.wrap = false          -- 禁用自動換行
opt.scrolloff = 8         -- 滑動時保持 8 行距離
opt.sidescrolloff = 8     -- 水平滑動時保持 8 列距離
opt.showmode = false      -- 隱藏 "-- INSERT --" 等模式提示（使用 statusline 插件代替）

-- 縮排與縮排顯示
opt.tabstop = 4        -- 設置 Tab 為 4 個空格
opt.shiftwidth = 4     -- 設置自動縮排為 4 個空格
opt.expandtab = true   -- 將 Tab 轉換為空格
opt.smartindent = true -- 啟用智能縮排
opt.autoindent = true  -- 啟用自動縮排

-- 搜索體驗
opt.ignorecase = true -- 忽略大小寫搜索
opt.smartcase = true  -- 如果搜索中有大寫字母，則區分大小寫
opt.incsearch = true  -- 逐步顯示匹配結果
opt.hlsearch = true   -- 高亮搜索結果

-- 文件編碼
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- 交互體驗
opt.mouse = "a"               -- 啟用鼠標支持
opt.clipboard = "unnamedplus" -- 共享系統剪貼簿
opt.updatetime = 300          -- 減少 CursorHold 觸發時間，默認 4000ms
opt.timeoutlen = 500          -- 鍵盤快捷鍵等待時間

-- UI 設置
opt.termguicolors = true -- 啟用 24 位顏色
opt.signcolumn = "yes"   -- 永遠顯示符號欄，避免界面跳動
opt.splitright = true    -- 垂直分割時，新窗口放右側
opt.splitbelow = true    -- 水平分割時，新窗口放底部

-- 行為優化
opt.hidden = true       -- 允許切換 Buffer 而不保存
opt.autoread = true     -- 文件變更時自動讀取
opt.undofile = true     -- 啟用持久撤銷
opt.swapfile = false    -- 禁用 swap file
opt.backup = false      -- 禁用備份
opt.writebackup = false -- 禁用寫入時的備份
opt.lazyredraw = true   -- 減少大文件滾動時的卡頓
