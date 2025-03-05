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
                mocha = {
                    rosewater = "#F5B8AB",
                    flamingo = "#F29D9D",
                    pink = "#AD6FF7",
                    mauve = "#FF8F40",
                    red = "#E66767",
                    maroon = "#EB788B",
                    peach = "#FAB770",
                    yellow = "#FACA64",
                    green = "#70CF67",
                    teal = "#4CD4BD",
                    sky = "#61BDFF",
                    sapphire = "#4BA8FA",
                    blue = "#00BFFF",
                    lavender = "#00BBCC",
                    text = "#C1C9E6",
                    subtext1 = "#A3AAC2",
                    subtext0 = "#8E94AB",
                    overlay2 = "#7D8296",
                    overlay1 = "#676B80",
                    overlay0 = "#464957",
                    surface2 = "#3A3D4A",
                    surface1 = "#2F313D",
                    surface0 = "#1D1E29",
                    base = "#0b0b12",
                    mantle = "#11111a",
                    crust = "#191926",
                },
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
                    conceal_hidden = true, --讓隱藏文件變淡
                },
            })
        end,
    },
} --return end
