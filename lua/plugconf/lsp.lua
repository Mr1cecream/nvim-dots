local capabilities
PRequire('cmp_nvim_lsp', function(lsp)
    capabilities = lsp.default_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
end)

local lsp_signature = PRequire('lsp_signature')

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    if lsp_signature ~= {} then
        lsp_signature.on_attach({
            bind = true,
            handler_opts = {
                border = 'rounded',
            },
        }, bufnr)
    end
    if client.supports_method('textDocument/formatting') then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd('BufWritePre', {
            group = augroup,
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
            end,
        })
    end
end

PSetup('mason')
PSetup('mason-lspconfig')

PRequire('mason-null-ls', function(mason_null_ls)
    mason_null_ls.setup({
        automatic_installation = false,
        automatic_setup = true,
    })
    PSetup('null-ls', {
        on_attach = on_attach,
    })
    mason_null_ls.setup_handlers()
end)

PRequire('lspconfig', function(lspconfig)
    local servers = { 'rust_analyzer', 'sumneko_lua', 'csharp_ls', 'bashls', 'html', 'clangd' }
    for _, lsp in pairs(servers) do
        lspconfig[lsp].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            flags = {
                debounce_text_changes = 150,
            },
        })
    end
end)
