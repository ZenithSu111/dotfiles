return {
  "folke/noice.nvim",
  event = "VeryLazy", -- 延遲加載以優化啟動性能
  dependencies = {
    "rcarriga/nvim-notify", -- 彈窗通知
    "nvim-lua/plenary.nvim", -- 必需依賴
    "MunifTanjim/nui.nvim", -- 提供更好的 UI 支持
  },
  opts = {
    cmdline = {
      enabled = true, -- 啟用命令行增強
      view = "cmdline_popup", -- 使用浮動視窗來替代命令行
      format = {
        cmdline = { icon = " ", title = " Command Line" },
        search_down = { icon = "🔍↓", title = " Search" },
        search_up = { icon = "🔍↑", title = " Search" },
        filter = { icon = "$", title = " Filter" },
        lua = { icon = "🌙", title = " Lua Command" },
        help = { icon = "❓", title = " Help" },
      },
    },
    popupmenu = {
      enabled = true, -- 啟用彈出選單
      backend = "nui", -- 使用 Nui 為選單提供更好的支持
    },
    -- 預設行為
    presets = {
      bottom_search = false, -- 禁用搜索框在底部，改用浮動
      command_palette = false, -- 可選: 禁用命令面板
      long_message_to_split = true, -- 長消息拆分到窗口中
    },
  },
  config = function(_, opts)
    require("noice").setup(opts)
    -- 使用 nvim-notify 作為通知提供器
    local notify = require("notify")
    vim.notify = notify
  end,
}

