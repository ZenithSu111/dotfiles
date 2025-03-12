return {
    {
        --lualine------------------------------------------------------------------------------------
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                },
            })
        end,
    },
    --lualine end--------------------------------------------------------------------------------

    --indent-blankline---------------------------------------------------------------------------
    {
        {
            "lukas-reineke/indent-blankline.nvim",
            event = "VeryLazy",
            config = function()
                require("ibl").setup({})
            end,
        },
    },
    --indent-blankline end-----------------------------------------------------------------------

    --harpoon------------------------------------------------------------------------------------
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    --harpoon end--------------------------------------------------------------------------------

    --tokyo night--------------------------------------------------------------------------------
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000, --make sure it will load fastest
        opts = {},
    },
    --tokyo night end-----------------------------------------------------------------------------
    --catppucin-----------------------------------------------------------------------------------
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            no_italic = true,
            term_colors = true,
            transparent_background = false,
            styles = {
                comments = {},
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
            },
            color_overrides = {
                mocha = {},
            },
            integrations = {
                telescope = {
                    enabled = true,
                    style = "nvchad",
                },
                blink_cmp = true,
            },
        },
    },
    --catppucin end

    --oil----------------------------------------------------------------------------------------
    --a file exploer
    {
        "stevearc/oil.nvim",
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        -- Optional dependencies
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        -- ependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
        config = function()
            vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
            require("oil").setup({
                defalut_file_expolorer = true, --預設為Oil啟動
                columns = {
                    "icon",
                    -- "permissions",
                    -- "size",
                    -- "mtime",
                },
                keymaps = {
                    ["g?"] = { "actions.show_help", mode = "n" },
                    ["<CR>"] = "actions.select",
                    ["<C-s>"] = { "actions.select", opts = { vertical = true } },
                    ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
                    ["<C-t>"] = { "actions.select", opts = { tab = true } },
                    ["<C-p>"] = "actions.preview",
                    ["<C-c>"] = { "actions.close", mode = "n" },
                    ["<C-l>"] = "actions.refresh",
                    ["-"] = { "actions.parent", mode = "n" },
                    ["_"] = { "actions.open_cwd", mode = "n" },
                    ["`"] = { "actions.cd", mode = "n" },
                    ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
                    ["gs"] = { "actions.change_sort", mode = "n" },
                    ["gx"] = "actions.open_external",
                    ["g."] = { "actions.toggle_hidden", mode = "n" },
                    ["g\\"] = { "actions.toggle_trash", mode = "n" },
                },
                view_options = {
                    show_hidden = true, --顯示隱藏文件
                },
            })
        end,
    },
} --return end
