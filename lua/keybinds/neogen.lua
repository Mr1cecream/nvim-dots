local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', '<Leader>g', '<CMD>Neogen<CR>', opts)
