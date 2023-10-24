return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'prism',
                    globalstatus = true,
                    component_separators = ' | ',
                },
                winbar = {},
                tabline = {},
                inactive_winbar = {},
            })
        end,
    },
}
