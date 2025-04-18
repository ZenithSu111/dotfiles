return {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            { "<leader>sb", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
            { "<leader>sh", "<cmd>Telescope help_tags<cr>",                     desc = "Help tags" },
            -- { "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "lsp_references" },
            { "<leader>sg", "<cmd>Telescope git_branches<CR>",                  desc = "Git git_branches" },
            { "<leader>sf", ":Telescope find_files<CR>",                        {} },
            { "<leader>rs", ":Telescope resume<CR>",                            {} },
            { "<leader>o",  ":Telescope lsp_document_symbols<CR>",              {} },
            { "<leader>P",  ":Telescope live_grep<CR>",                         {} },
            -- {
            -- 	"<Leader>b",
            -- 	":lua require('telescope.builtin').buffers()<CR>",
            -- 	silent = true,
            -- 	desc = "buffers",
            -- },
        },
        config = function()
            local pickers = require("telescope.pickers")
            local finders = require("telescope.finders")
            local previewers = require("telescope.previewers")
            local conf = require("telescope.config").values
            local actions = require("telescope.actions")
            local action_state = require("telescope.actions.state")
            require("telescope").setup({
                defaults = {
                    mappings = {
                        n = {
                            ["p"] = function(prompt_bufnr)
                                local current_picker = action_state.get_current_picker(prompt_bufnr)
                                local text = vim.fn.getreg("+"):gsub("\n", "") -- which register depends on clipboard option
                                current_picker:set_prompt(text, false)
                                current_picker:set_prompt(text, false)
                            end,
                            [",q"] = require("telescope.actions").close,
                        },
                    },
                },
                extensions = {
                    frecency = {
                        show_scores = true,
                        show_unindexed = true,
                        disable_devicons = false,
                    },
                    fzf = {
                        fuzzy = true,                   -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true,    -- override the file sorter
                        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                        -- the default case_mode is "smart_case"
                    },
                },
                pickers = {
                    find_files = {
                        file_ignore_patterns = { "node_modules[/\\]", "%.git[/\\]", "%.venv[/\\]" },
                        hidden = true,
                    },
                    buffers = {
                        theme = "dropdown",
                        previewer = false,
                        sort_mru = true,
                        show_all_buffers = true,
                        ignore_current_buffer = true,
                        mappings = {
                            n = {
                                ["dd"] = "delete_buffer",
                            },
                        },
                        -- ignore current file
                    },
                    live_grep = {
                        additional_args = function(opts)
                            return { "--hidden" }
                        end,
                        file_ignore_patterns = { "node_modules", ".git" },
                    },
                },
            })
            require("telescope").load_extension("fzf")
            vim.api.nvim_create_autocmd("WinLeave", {
                callback = function()
                    if vim.bo.ft == "TelescopePrompt" and vim.fn.mode() == "i" then
                        vim.cmd("stopinsert")
                    end
                end,
            })
        end,
    },
} --return end
