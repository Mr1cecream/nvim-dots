require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'bash',
        'c_sharp',
        'css',
        'html',
        'json',
        'lua',
        'make',
        'markdown',
        'norg',
        'rasi',
        'rust',
        'scss',
        'toml',
        'vim',
    },
    highlight = {
        enable = true,
    }
}
