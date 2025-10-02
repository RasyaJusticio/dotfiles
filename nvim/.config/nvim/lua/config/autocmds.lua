local utils = require("core.utils")

vim.api.nvim_create_augroup("FixLineEndings", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    utils.removeCarriageReturns()
  end,
})
