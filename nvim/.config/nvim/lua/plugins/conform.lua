return {
	{
		"williamboman/mason.nvim",
	},
	{
		"stevearc/conform.nvim",
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					lua = { "stylua" },
					markdown = { "prettier" },
					html = { "prettier" },
					css = { "prettier" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
					json = { "prettier" },
					php = { "phpcbf" },
					blade = { "blade-formatter" },
				},
				formatters = {
					["phpcbf"] = {
						command = "phpcbf",
						args = {
							"--standard=PSR2",
							"$FILENAME",
						},
					},
				},
			})

			vim.keymap.set({ "n", "v" }, "<leader>f", function()
				conform.format()
			end)
		end,
	},
	{
		"zapling/mason-conform.nvim",
	},
}
