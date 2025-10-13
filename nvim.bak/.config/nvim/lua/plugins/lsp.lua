local servers = {
	"lua_ls",
    "ts_ls",
}

return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason-lspconfig").setup({
			automatic_enable = false,
			ensure_installed = servers,
		})

		for _, server in ipairs(servers) do
			vim.lsp.enable(server)
		end
	end,
}
