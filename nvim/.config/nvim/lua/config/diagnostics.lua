vim.diagnostic.config({
	virtual_text = {
		spacing = 2,
		prefix = "|",
		severity = { min = vim.diagnostic.severity.ERROR },
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

