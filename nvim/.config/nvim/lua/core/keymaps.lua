local utils = require("core.utils")
local setKeymap = utils.setKeymap

setKeymap("n", "<leader>e", vim.cmd.Ex)
setKeymap("n", "<leader>q", vim.cmd.q)
setKeymap("n", "<leader><leader>", vim.cmd.nohlsearch)

-- === Copy, Cut, Delete ===

-- Replace selected text with the default register without yanking the replaced text
setKeymap("v", "p", [["_dP]])
-- Delete selected text without yanking the deleted text
setKeymap("n", "d", [["_d]])
setKeymap("v", "d", [["_d]])
-- Copy into system clipboard
setKeymap("n", "<leader>y", '"+y')
setKeymap("v", "<leader>y", '"+y')
setKeymap("n", "<leader>Y", '"+Y')
-- Paste from system clipboard
setKeymap("n", "<leader>p", '"+p')
setKeymap("n", "<leader>P", '"+P')
setKeymap("v", "<leader>p", '"+p')

