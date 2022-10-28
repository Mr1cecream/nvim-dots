local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- rename
keymap('n', 'cr', vim.lsp.buf.rename, opts)
-- code actions
keymap('n', 'ca', vim.lsp.buf.code_action, opts)
-- definition
keymap('n', 'cd', vim.lsp.buf.definition, opts)
-- type definition
keymap('n', 'ct', vim.lsp.buf.type_definition, opts)
-- hover action
keymap('n', 'ch', vim.lsp.buf.hover, opts)
-- references
keymap('n', 'cx', vim.lsp.buf.references, opts)
-- signature help
keymap('n', 'cs', vim.lsp.buf.signature_help, opts)
