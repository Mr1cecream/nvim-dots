local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- refresh config
keymap('n',
    '<Leader><Leader>',
    function()
        _LOADED = nil
        vim.cmd [[source $MYVIMRC]]
    end,
    opts
)

-- sync packer
keymap('n', '<Leader>sp', '<CMD>PackerSync<CR>', opts)

-- window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- resize
-- keymap('n', '<C-K>', '<CMD>resize -2<CR', opts)
-- keymap('n', '<C-J>', '<CMD>resize +2<CR', opts)
-- keymap('n', '<C-H>', '<CMD>vertical resize -2<CR', opts)
-- keymap('n', '<C-L>', '<CMD>vertical resize +2<CR', opts)

-- move lines
keymap('n', '<A-j>', '<CMD>m .+1<CR>==', opts)
keymap('n', '<A-k>', '<CMD>m .-2<CR>==', opts)
keymap('v', '<A-j>', '<CMD>m .+1<CR>gv=gv', opts)
keymap('v', '<A-k>', '<CMD>m .-2<CR>gv=gv', opts)

-- Un-highlight
keymap('n', '<C-L>', '<CMD>noh<CR>')

-- Hop
keymap('n', 't', '<CMD>HopChar2<CR>', opts)
