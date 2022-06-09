local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', '<Leader>nf', require('neogen').generate(), opts)
