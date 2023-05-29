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

-- resize
-- Keymap('n', '<C-K>', '<CMD>resize -2<CR', Opts)
-- Keymap('n', '<C-J>', '<CMD>resize +2<CR', Opts)
-- Keymap('n', '<C-H>', '<CMD>vertical resize -2<CR', Opts)
-- Keymap('n', '<C-L>', '<CMD>vertical resize +2<CR', Opts)

-- move lines
Keymap('n', '<A-<Left>>', '<CMD>m .+1<CR>==', Opts)
Keymap('n', '<A-<Down>>', '<CMD>m .-2<CR>==', Opts)
Keymap('v', '<A-<Up>>', '<CMD>m .+1<CR>gv=gv', Opts)
Keymap('v', '<A-<Right>>', '<CMD>m .-2<CR>gv=gv', Opts)

-- Un-highlight
Keymap('n', '<C-L>', '<CMD>noh<CR>')

-- Hop
Keymap('n', 't', '<CMD>HopChar2<CR>', Opts)

-- Twilight
Keymap('n', '<Leader>w', '<CMD>Twilight<CR>', Opts)

-- Zen Mode
Keymap('n', '<Leader>z', '<CMD>ZenMode<CR>', Opts)
