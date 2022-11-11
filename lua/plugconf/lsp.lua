local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local ok, lsp_format = pcall(require, 'lsp-format')
if not ok then
    print('Failed to load lsp-format')
    return
end
lsp_format.setup()
local lsp_signature
ok, lsp_signature = pcall(require, 'lsp_signature')
if not ok then
    print('Failed to load lsp-signature')
    return
end

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    lsp_format.on_attach(client)
    lsp_signature.on_attach({
        bind = true,
        handler_opts = {
            border = 'rounded'
        }
    }, bufnr)
end

PSetup('mason')
PSetup('mason-lspconfig', {
    ensure_installed = { 'sumneko_lua', 'rust_analyzer' }, -- automatically install lua and rust LSPs
})

local lspconfig
ok, lspconfig = pcall(require, 'lspconfig')
if not ok then
    print('Failed to load lspconfig')
    return
end
local servers = { 'rust_analyzer', 'sumneko_lua', 'csharp_ls', 'bashls', 'html', 'clangd' }
for _, lsp in pairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {
            debounce_text_changes = 150,
        }
    }
end
