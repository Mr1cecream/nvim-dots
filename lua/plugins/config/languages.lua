return {
    {
        'simrat39/rust-tools.nvim',
        ft = 'rust',
    },
    {
        'saecki/crates.nvim',
        version = '*',
        dependencies = { 'nvim-lua/plenary.nvim' },
        event = 'BufEnter Cargo.toml',
        config = true,
    },
    {
        'elkowar/yuck.vim',
        event = 'BufReadPre *.yuck',
    },
}
