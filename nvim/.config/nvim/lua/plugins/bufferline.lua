local utils = require("core.utils")

return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")

		bufferline.setup({})

		utils.setKeymap("n", "<A-l>", function()
			bufferline.cycle(1)
		end, { desc = "Bufferline: Next Buffer" })

		utils.setKeymap("n", "<A-h>", function()
			bufferline.cycle(-1)
		end, { desc = "Bufferline: Previous Buffer" })

		for i = 1, 9 do
			utils.setKeymap("n", "<A-" .. i .. ">", function()
				bufferline.go_to(i, true)
			end, { desc = "Bufferline: Go to buffer " .. i })
		end

		utils.setKeymap("n", "<A-w>", function()
			vim.api.nvim_buf_delete(0, { force = false })
		end, { desc = "Bufferline: Close Current Buffer" })
	end,
}
