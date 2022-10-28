local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', '<Leader>n', '<cmd>BufferLineCycleNext<CR>', opts)
keymap('n', '<Leader>n', '<cmd>BufferLineCyclePrev<CR>', opts)
keymap('n', '<Leader>q', '<cmd>bdelete!<CR><cmd>NvimTreeClose<CR><cmd>BufferLineCycleNext<CR>', opts)
