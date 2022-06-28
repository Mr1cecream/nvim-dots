local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- rename
keymap({ 'n', 'v' }, 'cr', '<CMD>lua vim.lsp.buf.rename()<CR>', opts)
-- code actions
keymap('n', 'ca', '<CMD>lua vim.lsp.buf.code_action()<CR>', opts)
-- definition
keymap('n', 'cd', '<CMD>lua vim.lsp.buf.definition()<CR>', opts)
-- type definition
keymap('n', 'ct', '<CMD>lua vim.lsp.buf.type_definition()<CR>', opts)
