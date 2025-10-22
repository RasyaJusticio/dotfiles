local utils = require("core.utils")
local setKeymap = utils.setKeymap

setKeymap("n", "<leader><leader>", vim.cmd.nohlsearch)
setKeymap("n", "<C-q>", function()
	if vim.fn.confirm("Quit all?", "&Yes\n&No", 2) == 1 then
		vim.cmd.q()
	end
end)
setKeymap({"n", "i"}, "<C-s>", vim.cmd.w)

setKeymap("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
setKeymap("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
setKeymap("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
setKeymap("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
setKeymap("n", "<C-c>", "<C-w>c", { desc = "Close current split", remap = true })
setKeymap("n", "<C-o>", "<C-w>o", { desc = "Close other split except current", remap = true })

setKeymap("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
setKeymap("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
setKeymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
setKeymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

setKeymap("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
setKeymap("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
setKeymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
setKeymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
setKeymap("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
setKeymap("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

setKeymap("n", "<leader>bd", function()
	Snacks.bufdelete()
end, { desc = "Delete Buffer" })
setKeymap("n", "<leader>bo", function()
	Snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })
setKeymap("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Replace selected text with the default register without yanking the replaced text
setKeymap("v", "p", [["_dP]])
-- Delete selected text without yanking the deleted text
setKeymap("n", "d", [["_d]])
setKeymap("v", "d", [["_d]])
-- Change selected text without yanking the changed text
setKeymap("n", "c", [["_c]])
setKeymap("v", "c", [["_c]])
-- Copy into system clipboard
setKeymap("n", "<leader>y", '"+y')
setKeymap("v", "<leader>y", '"+y')
setKeymap("n", "<leader>Y", '"+Y')
-- Paste from system clipboard
setKeymap("n", "<leader>p", '"+p')
setKeymap("n", "<leader>P", '"+P')
setKeymap("v", "<leader>p", '"+p')
