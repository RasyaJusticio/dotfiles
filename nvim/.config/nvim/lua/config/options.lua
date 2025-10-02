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
opt.signcolumn = 'yes'
opt.wrap = false
opt.sidescrolloff = 8
opt.scrolloff = 8

-- Window
opt.title = true
opt.titlestring = "NeoVim"

-- Persitent Undo
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undofile = true

-- Tabs & Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Number options
opt.numberwidth = 2

