local opt = vim.opt

-- Current line highlighting
opt.cursorline = true

-- Number options
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2

-- Tab options
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Terminal GUI colors
opt.termguicolors = true

vim.diagnostic.config({
  virtual_text = {
    spacing = 2,
    prefix = "●",  -- or “▎” or other symbol
    severity = { min = vim.diagnostic.severity.ERROR },  -- show only errors, or specify which severities
  },
  signs = true,         -- marks in the sign column
  underline = true,     -- underline problematic code
  update_in_insert = false,
  severity_sort = true,
})
