return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local api = require("nvim-tree.api")

		require("nvim-tree").setup({
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
		})

		local function opts(desc)
			return { desc = "nvim-tree: " .. desc, noremap = true, silent = true, nowait = true }
		end

		vim.keymap.set("n", "<leader>e", api.tree.open, opts("Open tree"))
		vim.keymap.set("n", "<leader>i", api.tree.close, opts("Close tree"))
		vim.keymap.set("n", "<leader>tr", api.tree.reload, opts("Refresh tree"))
	end,
}
