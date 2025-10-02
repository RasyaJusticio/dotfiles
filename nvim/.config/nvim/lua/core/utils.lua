local M = {}

function M.setKeymap(mode, keybind, action, opts)
    local options = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
    return vim.keymap.set(mode, keybind, action, options)
end

function M.removeCarriageReturns()
    vim.cmd([[%s/\r\+$//e]])
end

return M
