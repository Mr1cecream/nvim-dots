return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { 'ff', '<CMD>Telescope find_files<CR>' },
            { 'fb', '<CMD>Telescope buffers<CR>' },
            { 'fg', '<CMD>Telescope live_grep<CR>' },
            { 'fk', '<CMD>Telescope keymaps<CR>' },
            { 'fq', '<CMD>Telescope quickfix<CR>' },
            { 'fr', '<CMD>Telescope lsp_references<CR>' },
            { 'ft', '<CMD>Telescope lsp_definitions<CR>' },
            { 'fd', '<CMD>Telescope treesitter<CR>' },
            { 'fw', '<CMD>Telescope lsp_workspace_symbols<CR>' },
            { 'fe', '<CMD>Telescope diagnostics<CR>' },
            { 'fs', '<CMD>Telescope git_status<CR>' },
        },
    },
}
