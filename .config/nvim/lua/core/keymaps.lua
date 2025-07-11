vim.g.mapleader = " "

local set = vim.keymap.set
local opts = { noremap = true, silent = true }

set("n", "<leader>e", vim.cmd.Ex, opts)
set("n", "<leader><Esc>", ":q<CR>", opts)

set("n", "<leader>tn", ":tabnew<CR>", opts)
set("n", "<leader>tc", ":tabclose<CR>", opts)
set("n", "<leader>tl", ":tabnext<CR>", opts)
set("n", "<leader>th", ":tabprev<CR>", opts)

set("n", "<leader><leader>", ":nohlsearch<CR>", opts)

set("n", "<leader>sh", ":split<CR>", opts)
set("n", "<leader>sv", ":vsplit<CR>", opts)

set("n", "<A-h>", "<C-w>h", opts)
set("n", "<A-j>", "<C-w>j", opts)
set("n", "<A-k>", "<C-w>k", opts)
set("n", "<A-l>", "<C-w>l", opts)

set("n", "<A-S>h", ":vertical resize -5<CR>", opts)
set("n", "<A-S>j", ":vertical resize +5<CR>", opts)
set("n", "<A-S>k", ":resize +3<CR>", opts)
set("n", "<A-S>l", ":resize -3<CR>", opts)

