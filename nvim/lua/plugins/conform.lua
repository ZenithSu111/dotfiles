return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" }, -- 在保存檔案前觸發格式化
    cmd = { "ConformInfo" }, -- 提供 Conform 的資訊命令
    keys = {
        {
            ",f", -- 快捷鍵綁定：手動觸發格式化
            function()
                require("conform").format({ async = true, lsp_fallback = "always" })
            end,
            mode = "n",      -- 一般模式
            desc = "[F]ormat buffer", -- 說明：格式化當前緩衝區
        },
    },
    opts = {
        notify_on_error = false, -- 格式化失敗時不顯示錯誤通知
        format_on_save = function(bufnr)
            -- 定義不需要自動格式化的檔案類型
            local disable_filetypes = {} -- 添加你不希望自動格式化的語言

            -- 檢查當前緩衝區是否需要禁用格式化
            if vim.tbl_contains(disable_filetypes, vim.bo[bufnr].filetype) then
                return nil
            end

            -- 返回格式化選項
            return {
                timeout_ms = 1000, -- 設置超時時間為 1 秒
                lsp_fallback = "always", -- 如果未找到合適的格式化工具，則回退到 LSP
            }
        end,
        formatters_by_ft = {
            -- Lua 檔案使用 stylua 格式化
            lua = { "stylua" },

            -- C/C++ 檔案使用 clang-format 格式化
            c = { "clang_format" },
            cpp = { "clang_format" },

            -- Go 檔案使用 gofmt 格式化
            go = { "gofmt" },

            -- Rust 檔案使用 rustfmt 格式化
            rust = { "rustfmt" },

            -- JavaScript 和 TypeScript 使用 prettier 格式化
            javascript = { "prettier" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            vue = { "prettier" },
            html = { "prettier" },

            -- Python 示例（註解掉的部分）
            -- python = { "isort", "black" }, -- 先執行 isort，再執行 black
        },
        formatters = {
            -- 自訂 clang-format 參數
            clang_format = {
                prepend_args = { "--style={IndentWidth: 4}" }, -- 設置縮排寬度為 4
            },

            -- 自訂 prettier 參數（如果需要）
            -- prettier = {
            --     args = { "--tab-width", "2" }, -- 設置 tab 寬度為 2
            -- },
        },
    },
}
