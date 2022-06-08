local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- refresh config
keymap('n',
    [[<Leader><Leader>]],
    function()
        _LOADED = nil
        vim.cmd[[source %]]
    end,
    opts
)

-- window navigation
keymap('n', [[<C-h>]], [[<C-w>h]], opts)
keymap('n', [[<C-j>]], [[<C-w>j]], opts)
keymap('n', [[<C-k>]], [[<C-w>k]], opts)
keymap('n', [[<C-l>]], [[<C-w>l]], opts)

-- resize
-- keymap('n', [[<C-K>]], [[:resize -2<CR]], opts)
-- keymap('n', [[<C-J>]], [[:resize +2<CR]], opts)
-- keymap('n', [[<C-H>]], [[:vertical resize -2<CR]], opts)
-- keymap('n', [[<C-L>]], [[:vertical resize +2<CR]], opts)

-- move lines
keymap('n', '<A-j>', ':m .+1<CR>==', opts)
keymap('n', '<A-k>', ':m .-2<CR>==', opts)
keymap('v', '<A-j>', ':m .+1<CR>gv=gv', opts)
keymap('v', '<A-k>', ':m .-2<CR>gv=gv', opts)
