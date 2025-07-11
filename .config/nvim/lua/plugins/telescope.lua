return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set("n", "<leader>lf", builtin.find_files, {})
        vim.keymap.set("n", "<leader>le", builtin.live_grep, {})

        vim.keymap.set("n", "<leader>lhf", function ()
            builtin.find_files({ hidden = true, no_ignore = true })
        end, {})
        vim.keymap.set('n', '<leader>lhe', function()
            builtin.live_grep({ additional_args = {'--hidden', '--no-ignore'} })
        end, {})

        vim.keymap.set("n", "<leader>lr", function()
			builtin.grep_string({ search = vim.fn.input("Find text in project > ") })
		end)
    end
}
