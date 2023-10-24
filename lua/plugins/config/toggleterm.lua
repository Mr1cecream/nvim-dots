return {
    {
        'akinsho/toggleterm.nvim',
        version = '*',
        opts = {
            shade_terminals = false,
            open_mapping = [[<Leader>p]],
            insert_mappings = false,
            terminal_mappings = false,
            autochdir = true,
        },
        keys = {
            { '<Leader>p', mode = 'n' },
        },
        cmd = 'ToggleTerm',
    },
}
