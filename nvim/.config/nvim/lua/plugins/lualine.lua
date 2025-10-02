return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', 'NStefan002/screenkey.nvim' },
    config = function()
        local lualine = require("lualine")

        lualine.setup({
            theme = "ayu_mirage",
            sections = {
                lualine_c = {
                    function()
                        return require("screenkey").get_keys()
                    end,
                    function()
                        return vim.fn['FugitiveStatusline']()
                    end,
                },
            },
        })

        vim.cmd("Screenkey toggle_statusline_component")
    end
}
