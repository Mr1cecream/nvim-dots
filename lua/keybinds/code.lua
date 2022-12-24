-- rename
Keymap('n', 'cr', vim.lsp.buf.rename, Opts)
-- code actions
Keymap('n', 'ca', vim.lsp.buf.code_action, Opts)
-- definition
Keymap('n', 'cd', vim.lsp.buf.definition, Opts)
-- type definition
Keymap('n', 'ct', vim.lsp.buf.type_definition, Opts)
-- hover action
Keymap('n', 'ch', vim.lsp.buf.hover, Opts)
-- references
Keymap('n', 'cx', vim.lsp.buf.references, Opts)
-- signature help
Keymap('n', 'cs', vim.lsp.buf.signature_help, Opts)
