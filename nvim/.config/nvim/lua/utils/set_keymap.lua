local function set_keymap(mode, keybind, action, opts)
	local options = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
	return vim.keymap.set(mode, keybind, action, options)
end

return set_keymap
