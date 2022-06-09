local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- rename
keymap({ 'n', 'v' }, '<Leader>rn', '<CMD>lua require("renamer").rename()<CR>', opts)
