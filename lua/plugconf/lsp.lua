local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

PSetup('lsp-format')
local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    require('lsp-format').on_attach(client)
end

PSetup('nvim-lsp-installer', {
    automatic_installation = true
})

local ok, lspconfig = pcall(require, 'lspconfig')
if not ok then
    print('Failed to load lspconfig')
    return
end
local servers = { 'rust_analyzer', 'sumneko_lua', 'csharp_ls', 'bashls', 'html' }
for _, lsp in pairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {
            debounce_text_changes = 150,
        }
    }
end
