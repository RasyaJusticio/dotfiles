local servers = {
	"lua_ls",
	"phpactor",
	"laravel_ls",
	"ts_ls",
	"eslint",
	"emmet_ls",
}

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = false,
				ensure_installed = servers,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
            for _, server in ipairs(servers) do
                vim.lsp.config(server, require("lsp." .. server))
			    vim.lsp.enable(server)
            end
		end,
	},
}
