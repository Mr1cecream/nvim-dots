return {
	{
		'neovim/nvim-lspconfig',
		lazy = false,
		dependencies = {
			{
				'williamboman/mason.nvim',
				cmd = { 'Mason', 'MasonUpdate' },
				build = ':MasonUpdate',
			},
			'williamboman/mason-lspconfig.nvim',
			{
				'jay-babu/mason-null-ls.nvim',
				dependencies = {
					{ 'nvimtools/none-ls.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
				},
			},
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			{ 'hrsh7th/cmp-vsnip', dependencies = { 'hrsh7th/vim-vsnip' } },
			'onsails/lspkind.nvim',
			'ray-x/lsp_signature.nvim',
			'windwp/nvim-autopairs',
		},
		---@class PluginLspOpts
		opts = {
			diagnostics = {
				underline = true,
				update_in_insert = false,
				virtual_text = {
					spacing = 4,
					source = 'if_many',
				},
				severity_sort = true,
			},
		},
		keys = {
			{ ',r', vim.lsp.buf.rename },
			{ ',a', vim.lsp.buf.code_action },
			{ ',h', vim.lsp.buf.hover },
			{ ',s', vim.lsp.buf.signature_help },
		},
		---@param opts PluginLspOpts
		config = function(_, opts)
			local capabilities
			capabilities = require('cmp_nvim_lsp').default_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true

			local lsp_signature = require('lsp_signature')

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

			require('mason').setup()

            require('null-ls').setup({
                on_attach = on_attach,
            })

            require('mason-null-ls').setup({
                automatic_setup = true,
                handlers = {},
            })

			local mason_lspconfig = require('mason-lspconfig')
			local lspconfig = require('lspconfig')
			local function setup_lsp(lsp)
				lspconfig[lsp].setup({
					on_attach = on_attach,
					capabilities = capabilities,
					flags = {
						debounce_text_changes = 150,
					},
				})
			end

			mason_lspconfig.setup_handlers({
				function(lsp)
					setup_lsp(lsp)
				end,
			})

			vim.diagnostic.config(vim.deepcopy(opts.diagnostics))

			require('nvim-autopairs').setup()

			local cmp = require('cmp')
			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn['vsnip#anonymous'](args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),
					['<Tab>'] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'vsnip' },
				}, {
					{ name = 'buffer' },
					{ name = 'path' },
				}),
				formatting = {
					format = require('lspkind').cmp_format({
						mode = 'symbol_text',
						menu = {
							buffer = '[Buffer]',
							nvim_lsp = '[LSP]',
							vsnip = '[VSnip]',
							nvim_lua = '[Lua]',
							latex_symbols = '[Latex]',
						},
					}),
				},
			})

			cmp.setup.cmdline('/', {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = 'buffer' },
				},
			})

			cmp.setup.cmdline(':', {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = 'path' },
				}, {
					{ name = 'cmdline' },
				}),
			})

			local cmp_autopairs = require('nvim-autopairs.completion.cmp')
			cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

			vim.api.nvim_create_autocmd('BufRead', {
				group = vim.api.nvim_create_augroup('CmpSourceCargo', { clear = true }),
				pattern = 'Cargo.toml',
				callback = function()
					cmp.setup.buffer({ sources = { { name = 'crates' } } })
				end,
			})
		end,
	},
}
