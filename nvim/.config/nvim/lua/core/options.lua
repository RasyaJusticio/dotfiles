local opt = vim.opt

-- General
opt.hlsearch = true
opt.number = true
opt.relativenumber = true
opt.showmode = false

-- Display Settings
opt.termguicolors = true

-- Scrolling & UI
opt.cursorline = true
opt.signcolumn = "yes"
opt.wrap = false
opt.sidescrolloff = 8
opt.scrolloff = 8

-- Window
opt.title = true
opt.titlestring = "NeoVim"

-- Netrw
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- Tabs & Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Number options
opt.numberwidth = 2

-- Code Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
