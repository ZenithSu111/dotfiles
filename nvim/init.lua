--載入lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 然後載入其他基本設定
require("options")  -- 基本選項設定
require("keymaps")  -- 快捷鍵設定
require("misc")     -- 其他設定

-- 最後設定並初始化 lazy.nvim
require("lazy").setup("plugins") -- 假設您的插件設定在 plugins 資料夾中
