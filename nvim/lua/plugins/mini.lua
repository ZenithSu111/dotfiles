return {
	{ "echasnovski/mini.nvim", version = "*" },
	{
		"echasnovski/mini.surround",
		version = "*",

		config = function()
			require("mini.surround").setup({
				{
					custom_surroundings = nil,

					highlight_duration = 500,

					mappings = {
						add = "sa", -- Add surrounding in Normal and Visual modes
						delete = "sd", -- Delete surrounding
						find = "sf", -- Find surrounding (to the right)
						find_left = "sF", -- Find surrounding (to the left)
						highlight = "sh", -- Highlight surrounding
						replace = "sr", -- Replace surrounding
						update_n_lines = "sn", -- Update `n_lines`

						suffix_last = "l", -- Suffix to search with "prev" method
						suffix_next = "n", -- Suffix to search with "next" method
					},

					n_lines = 20,

					respect_selection_type = false,

					search_method = "cover",
					silent = false,
				},
			})
		end,
	},

	{
		"echasnovski/mini.pairs",
		version = "*",
		config = function()
			require("mini.pairs").setup({
				{
					modes = { insert = true, command = false, terminal = false },

					mappings = {
						["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
						["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." },
						["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." },

						[")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
						["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
						["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },

						['"'] = {
							action = "closeopen",
							pair = '""',
							neigh_pattern = "[^\\].",
							register = { cr = false },
						},
						["'"] = {
							action = "closeopen",
							pair = "''",
							neigh_pattern = "[^%a\\].",
							register = { cr = false },
						},
						["`"] = {
							action = "closeopen",
							pair = "``",
							neigh_pattern = "[^\\].",
							register = { cr = false },
						},
					},
				},
			})
		end,
	},
	{
		"echasnovski/mini.files",
		config = function()
			require("mini.files").setup({

				mappings = {
					go_in = "<CR>",
					go_in_plus = "L",
					go_out = "-",
					go_out_plus = "H",
				},
			})
			vim.keymap.set("n", "<leader>ee", "<cmd>lua MiniFiles.open()<CR>", { desc = "Toggle mini file explorer" })
			vim.keymap.set("n", "<leader>ef", function()
				MiniFiles.open(vim.api.nvim.buf_get_name(0), false)
				MiniFiles.reveal_cwd()
			end, { desc = "Open current file in mini file explorer" })
		end,
	},
}
