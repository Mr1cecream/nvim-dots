local keymap = vim.keymap.set

keymap('t', '<Esc>', '<C-\\><C-n><C-w>k', { noremap = true, silent = true })
keymap('n', '<Leader>p', '<CMD>ToggleTerm')
