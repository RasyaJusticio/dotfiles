local utils = require("core.utils")

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")

        utils.setKeymap("n", "<leader>lf", function()
            builtin.find_files({
                hidden = false,
                no_ignore = false
            })
        end, { desc = "Telescope: Find files" })

        utils.setKeymap("n", "<leader>laf", function()
            builtin.find_files({
                hidden = true,
                no_ignore = true 
            })
        end, { desc = "Telescope: Find all files" })

        utils.setKeymap("n", "<leader>le", function()
            builtin.live_grep({
                hidden = false,
                no_ignore = false
            })
        end, { desc = "Telescope: Find text in files" })

        utils.setKeymap("n", "<leader>lae", function()
            builtin.live_grep({
                hidden = true,
                no_ignore = true 
            })
        end, { desc = "Telescope: Find text in all files" })

        
    end
}
