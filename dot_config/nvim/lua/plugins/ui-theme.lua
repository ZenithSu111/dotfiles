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
} --return end
