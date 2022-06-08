
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n',
    'xx',
    '<cmd>TroubleToggle<CR>',
    opts)
keymap('n',
    'xw',
    '<cmd>Trouble workspace_diagnostics<CR>',
    opts)
keymap('n',
    'xd',
    '<cmd>Trouble document_diagnostics<CR>',
    opts)
keymap('n',
    'xq',
    '<cmd>Trouble quickfix<CR>',
    opts)
keymap('n',
    'xr',
    '<cmd>Trouble lps_references<CR>',
    opts)
