return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				markdown = { "biome" },
				html = { "biome" },
				css = { "biome" },
				javascript = { "biome" },
				typescript = { "biome" },
				javascriptreact = { "biome" },
				typescriptreact = { "biome" },
				json = { "biome" },
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
}
