local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', 'ff', '<CMD>Telescope find_files<CR>', opts)
keymap('n', 'fb', '<CMD>Telescope buffers<CR>', opts)
keymap('n', 'fg', '<CMD>Telescope live_grep<CR>', opts)
keymap('n', 'fh', '<CMD>Telescope howdoi<CR>', opts)
