local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', '<Leader>nf', '<CMD>Neogen<CR>', opts)
