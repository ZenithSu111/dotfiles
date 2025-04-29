return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			cpp = { "clang-format" },
			lua = { "stylua" },
			nix = { "alejandra" },
			python = { "isort", "black" },
			rust = { "rustfmt" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
	keys = {
		{
			",f",
			mode = { "n" },
			function()
				require("conform").format()
			end,
			desc = "Format current file",
		},
	},
}
