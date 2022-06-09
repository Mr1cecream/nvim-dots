local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', 'L', '<cmd>BufferLineCycleNext<CR>', opts)
keymap('n', 'H', '<cmd>BufferLineCyclePrev<CR>', opts)
keymap('n', 'Q', '<cmd>bdelete!<CR><cmd>NvimTreeClose<CR><cmd>BufferLineCycleNext<CR>', opts)
