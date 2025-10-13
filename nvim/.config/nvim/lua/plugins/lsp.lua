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
		opts = {
			-- Enable this to enable the builtin LSP inlay hints on Neovim.
			-- Be aware that you also will need to properly configure your LSP server to
			-- provide the inlay hints.
			inlay_hints = {
				enabled = true,
				exclude = { "vue" }, -- filetypes for which you don't want to enable inlay hints
			},
			-- Enable this to enable the builtin LSP code lenses on Neovim.
			-- Be aware that you also will need to properly configure your LSP server to
			-- provide the code lenses.
			codelens = {
				enabled = false,
			},
			-- Enable this to enable the builtin LSP folding on Neovim.
			-- Be aware that you also will need to properly configure your LSP server to
			-- provide the folds.
			folds = {
				enabled = true,
			},
			-- add any global capabilities here
			capabilities = {
				workspace = {
					fileOperations = {
						didRename = true,
						willRename = true,
					},
				},
			},
			-- options for vim.lsp.buf.format
			-- but can be also overridden when specified
			format = {
				formatting_options = nil,
				timeout_ms = nil,
			},
		},
		config = function()
			for _, server in ipairs(servers) do
				vim.lsp.config(server, require("lsp." .. server))
				vim.lsp.enable(server)
			end
		end,
	},
}
