return {
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = { 'windwp/nvim-ts-autotag' },
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {
                    'bash',
                    'lua',
                    'vim',
                },
                highlight = {
                    enable = true,
                },
                autotag = {
                    enable = true,
                },
            })
        end,
        lazy = false,
    },
    { 'sheerun/vim-polyglot',                lazy = false },
    { 'folke/todo-comments.nvim',            lazy = false },
    { 'lukas-reineke/indent-blankline.nvim', lazy = false },
    { 'norcalli/nvim-colorizer.lua',         cmd = 'ColorizerToggle' },
}
