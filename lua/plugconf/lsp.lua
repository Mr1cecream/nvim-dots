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

PSetup('null-ls', {
    on_attach = on_attach,
})

PSetup('mason-null-ls', {
    automatic_setup = true,
    handlers = {},
})

PRequire('mason-lspconfig', function(mason_lspconfig)
    PRequire('lspconfig', function(lspconfig)
        local function setup_lsp(lsp)
            lspconfig[lsp].setup({
                on_attach = on_attach,
                capabilities = capabilities,
                flags = {
                    debounce_text_changes = 150,
                },
            })
        end

        -- set up LSP servers installed by Mason
        mason_lspconfig.setup_handlers({
            function(lsp)
                setup_lsp(lsp)
            end,
        })

        -- set up LSP servers installed manually
        local manual_servers = {
            { lsp_name = 'openscad_ls', cmd = 'openscad-language-server' },
        }
        for _, lsp in ipairs(manual_servers) do
            if vim.fn.executable(lsp.cmd) == 1 then
                setup_lsp(lsp.lsp_name)
            end
        end
    end)
end)
