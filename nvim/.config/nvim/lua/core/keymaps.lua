local set_keymap = require("utils.set_keymap")

set_keymap("n", "<leader>q", vim.cmd.q)
set_keymap("n", "<leader><leader>", vim.cmd.nohlsearch)

--<< Copy, Cut, Edit, Delete >>--

-- Replace selected text with the default register without yanking the replaced text
set_keymap("v", "p", [["_dP]])
-- Delete selected text without yanking the deleted text
set_keymap("n", "d", [["_d]])
set_keymap("v", "d", [["_d]])
-- Change selected text without yanking the changed text
set_keymap("n", "c", [["_c]])
set_keymap("v", "c", [["_c]])
-- Copy into system clipboard
set_keymap("n", "<leader>y", '"+y')
set_keymap("v", "<leader>y", '"+y')
set_keymap("n", "<leader>Y", '"+Y')
-- Paste from system clipboard
set_keymap("n", "<leader>p", '"+p')
set_keymap("n", "<leader>P", '"+P')
set_keymap("v", "<leader>p", '"+p')
