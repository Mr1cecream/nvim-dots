return {
    {
        'folke/flash.nvim',
        event = 'VeryLazy',
        keys = {
            {
                's',
                mode = { 'n', 'x', 'o' },
                function()
                    require('flash').jump()
                end,
            },
            {
                'S',
                mode = { 'n', 'x', 'o' },
                function()
                    require('flash').treesitter()
                end,
            },
        },
        opts = {
            highlight = {
                backdrop = false,
                groups = {
                    label = 'Yellow',
                },
            },
            modes = {
                char = { enabled = false },
            },
        },
    },
}
