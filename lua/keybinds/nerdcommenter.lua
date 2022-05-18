local keymap = vim.keymap.set

keymap('n',
    [[<Leader>c]],
    [[:call nerdcommenter#Comment('n', 'toggle')<CR>]],
    { noremap = true, silent = true }
)
keymap('v',
    [[<Leader>c]],
    [[:call nerdcommenter#Comment('x', 'toggle')<CR>]],
    { noremap = true, silent = true }
)
