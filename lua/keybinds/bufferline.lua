local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', '<A-l>', ':BufferLineCycleNext<CR>', opts)
keymap('n', '<A-h>', ':BufferLineCyclePrev<CR>', opts)
