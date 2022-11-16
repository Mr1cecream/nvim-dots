local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local lsp_signature
ok, lsp_signature = pcall(require, 'lsp_signature')
if not ok then
	print('Failed to load lsp-signature')
	return
end

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	lsp_signature.on_attach({
		bind = true,
		handler_opts = {
			border = 'rounded',
		},
	}, bufnr)
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
PSetup('mason-lspconfig', {
	ensure_installed = { 'sumneko_lua', 'rust_analyzer', 'rustfmt' }, -- automatically install lua and rust LSPs
})

local null_ls = PRequire('null-ls')
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.rustfmt,
		null_ls.builtins.formatting.stylua,
	},
	on_attach = on_attach,
})

local lspconfig
ok, lspconfig = pcall(require, 'lspconfig')
if not ok then
	print('Failed to load lspconfig')
	return
end
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
