return{
  "nvim-treesitter/nvim-treesitter-textobjects",
  dependencies = {
        "nvim-treesitter/nvim-treesitter",
  },
    init = function ()
        require("nvim-treesitter.configs").setup ({
            textobjects = {
                select = {
                    enable = true,

                    lookahead = true,

                    keymaps = {
                        -- You can use the capture groups defined in textobjects.scm
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner", --快速刪除整個function
                        ["ac"] = "@class.outer",
                        ["ao"] = "@comment.outer", --快速刪除scope comment ex: dao 會快速找到這個scope comment 並刪除
                        -- nvim_buf_set_keymap) which plugins like which-key display
                        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                        -- You can also use captures from other query groups like `locals.scm`
                        ["as"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
                    },
                    selection_modes = {
                        ['@parameter.outer'] = 'v', -- charwise
                        ['@function.outer'] = 'V', -- linewise
                        ['@class.outer'] = '<c-v>', -- blockwise
                    },
                    include_surrounding_whitespace = true,
                },
            },
            swap = {
                enable = true,
                -- 交換函數內的參數 (a,b) (b,a)
                swap_next = {
                    ["<leader>a"] = {query = "@parameter.inner", desc = "Swap with next parameter "},
                },
                swap_previous = {
                    ["<leader>A"] = {query = "@parameter.inner", desc = "Swap with previous parameter" },
                }

            }

        })
    end,

}
