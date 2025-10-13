return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			explorer = { enabled = true },
			picker = {
				sources = {
					explorer = {
						hidden = true,
						auto_close = true,
					},
				},
			},
			indent = { enabled = true },
			input = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scroll = { enabled = true },
		},
		keys = {
			{
				"<leader>e",
				function()
					Snacks.explorer()
				end,
				desc = "File Explorer",
			},
		},
	},

	{
		"akinsho/bufferline.nvim",
		event = "BufAdd",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		keys = {
			{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
			{ "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
			{ "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
			{ "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
			{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
			{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
			{ "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
			{ "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
			{ "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
			{ "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
		},
		opts = {},
	},

	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons", "NStefan002/screenkey.nvim" },
		config = function()
			local lualine = require("lualine")

			lualine.setup({
				theme = "gruvbox",
				sections = {
					lualine_c = {
						function()
							return require("screenkey").get_keys()
						end,
						function()
							return vim.fn["FugitiveStatusline"]()
						end,
					},
				},
			})

			vim.cmd("Screenkey toggle_statusline_component")
		end,
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			routes = {
				{
					filter = {
						event = "msg_show",
						any = {
							{ find = "%d+L, %d+B" },
							{ find = "; after #%d+" },
							{ find = "; before #%d+" },
						},
					},
					view = "mini",
				},
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
			},
		},
		keys = {
			{ "<leader>sn", "", desc = "+noice" },
			{
				"<S-Enter>",
				function()
					require("noice").redirect(vim.fn.getcmdline())
				end,
				mode = "c",
				desc = "Redirect Cmdline",
			},
			{
				"<leader>snl",
				function()
					require("noice").cmd("last")
				end,
				desc = "Noice Last Message",
			},
			{
				"<leader>snh",
				function()
					require("noice").cmd("history")
				end,
				desc = "Noice History",
			},
			{
				"<leader>sna",
				function()
					require("noice").cmd("all")
				end,
				desc = "Noice All",
			},
			{
				"<leader>snd",
				function()
					require("noice").cmd("dismiss")
				end,
				desc = "Dismiss All",
			},
			{
				"<leader>snt",
				function()
					require("noice").cmd("pick")
				end,
				desc = "Noice Picker (Telescope/FzfLua)",
			},
			{
				"<c-f>",
				function()
					if not require("noice.lsp").scroll(4) then
						return "<c-f>"
					end
				end,
				silent = true,
				expr = true,
				desc = "Scroll Forward",
				mode = { "i", "n", "s" },
			},
			{
				"<c-b>",
				function()
					if not require("noice.lsp").scroll(-4) then
						return "<c-b>"
					end
				end,
				silent = true,
				expr = true,
				desc = "Scroll Backward",
				mode = { "i", "n", "s" },
			},
		},
		config = function(_, opts)
			-- HACK: noice shows messages from before it was enabled,
			-- but this is not ideal when Lazy is installing plugins,
			-- so clear the messages in this case.
			if vim.o.filetype == "lazy" then
				vim.cmd([[messages clear]])
			end
			require("noice").setup(opts)
		end,
	},

	{
		"NStefan002/screenkey.nvim",
		lazy = false,
		version = "*",
		config = function()
			local screenkey = require("screenkey")

			screenkey.setup({
				win_opts = {
					row = vim.o.lines - vim.o.cmdheight - 1,
					col = vim.o.columns - 1,
					relative = "editor",
					anchor = "SE",
					width = 25,
					height = 1,
					border = "single",
					title = "Screenkey",
					title_pos = "center",
					style = "minimal",
					focusable = false,
					noautocmd = true,
				},
				compress_after = 3,
				clear_after = 3,
				disable = {
					filetypes = {},
					buftypes = {},
				},
				show_leader = true,
				group_mappings = false,
				display_infront = {},
				display_behind = {},
				filter = function(keys)
					return keys
				end,
				keys = {
					["<TAB>"] = "󰌒",
					["<CR>"] = "󰌑",
					["<ESC>"] = "Esc",
					["<SPACE>"] = "␣",
					["<BS>"] = "󰌥",
					["<DEL>"] = "Del",
					["<LEFT>"] = "",
					["<RIGHT>"] = "",
					["<UP>"] = "",
					["<DOWN>"] = "",
					["<HOME>"] = "Home",
					["<END>"] = "End",
					["<PAGEUP>"] = "PgUp",
					["<PAGEDOWN>"] = "PgDn",
					["<INSERT>"] = "Ins",
					["<F1>"] = "󱊫",
					["<F2>"] = "󱊬",
					["<F3>"] = "󱊭",
					["<F4>"] = "󱊮",
					["<F5>"] = "󱊯",
					["<F6>"] = "󱊰",
					["<F7>"] = "󱊱",
					["<F8>"] = "󱊲",
					["<F9>"] = "󱊳",
					["<F10>"] = "󱊴",
					["<F11>"] = "󱊵",
					["<F12>"] = "󱊶",
					["CTRL"] = "Ctrl",
					["ALT"] = "Alt",
					["SUPER"] = "󰘳",
					["<leader>"] = "<leader>",
				},
			})
		end,
	},
}
