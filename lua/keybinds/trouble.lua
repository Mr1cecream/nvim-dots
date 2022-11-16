local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', 'xx', '<CMD>TroubleToggle<CR>', opts)
keymap('n', 'xw', '<CMD>Trouble workspace_diagnostics<CR>', opts)
keymap('n', 'xd', '<CMD>Trouble document_diagnostics<CR>', opts)
keymap('n', 'xq', '<CMD>Trouble quickfix<CR>', opts)
keymap('n', 'xr', '<CMD>Trouble lps_references<CR>', opts)

keymap('n', 'xt', '<CMD>TodoTrouble<CR>', opts)
