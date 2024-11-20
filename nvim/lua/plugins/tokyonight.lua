return {
  "folke/tokyonight.nvim",
  lazy = false, -- 確保插件立即加載
  priority = 1000, -- 保證此配色方案優先加載
  config = function()
    require("tokyonight").setup({
      style = "storm", -- 主題風格: night, storm, day, moon
      transparent = false, -- 是否啟用透明背景
      styles = {
        sidebars = "dark", -- 邊欄風格
        floats = "dark", -- 浮動窗口風格
      },
    })
    vim.cmd([[colorscheme tokyonight]])
  end,
}

