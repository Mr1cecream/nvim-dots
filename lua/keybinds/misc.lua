vim.g.mapleader = ' '

-- refresh config
Keymap('n', '<Leader><Leader>', function()
    _LOADED = nil
    vim.cmd([[source $MYVIMRC]])
end, Opts)

-- sync packer
Keymap('n', '<Leader>sp', '<CMD>PackerSync<CR>', Opts)

-- window navigation
Keymap('n', '<C-<Left>>', '<C-w>h', Opts)
Keymap('n', '<C-<Down>>', '<C-w>j', Opts)
Keymap('n', '<C-<Up>>', '<C-w>k', Opts)
Keymap('n', '<C-<Right>>', '<C-w>l', Opts)

-- Un-highlight
Keymap('n', '<C-L>', '<CMD>noh<CR>')

-- Hop
Keymap('n', 't', '<CMD>HopChar2<CR>', Opts)

-- Twilight
Keymap('n', '<Leader>w', '<CMD>Twilight<CR>', Opts)

-- Zen Mode
Keymap('n', '<Leader>z', '<CMD>ZenMode<CR>', Opts)
