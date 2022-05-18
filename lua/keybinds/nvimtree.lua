local keymap = vim.keymap.set

keymap('n', [[<Leader>t]],
    [[:NvimTreeFocus<CR>]],
    { noremap = true, silent = true }
)
