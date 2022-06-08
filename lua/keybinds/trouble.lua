
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n',
    'xx',
    ':TroubleToggle<CR>',
    opts)
keymap('n',
    'xw',
    ':Trouble workspace_diagnostics<CR>',
    opts)
keymap('n',
    'xd',
    ':Trouble document_diagnostics<CR>',
    opts)
keymap('n',
    'xq',
    ':Trouble quickfix<CR>',
    opts)
keymap('n',
    'xr',
    ':Trouble lps_references<CR>',
    opts)

keymap('n',
    'xt',
    ':TodoTrouble<CR>',
    opts)
