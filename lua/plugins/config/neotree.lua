return {
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
        },
        opts = {
            sources = {
                'filesystem',
                'buffers',
            },
            source_selector = {
                winbar = true,
            },
            filesystem = {
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                },
            },
            buffers = {
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                },
            },
        },
        cmd = 'Neotree',
        keys = {
            { '<Leader>t', '<CMD>Neotree reveal<CR>' },
        },
        lazy = false, -- needed to hijack netrw behavior
    },
}
