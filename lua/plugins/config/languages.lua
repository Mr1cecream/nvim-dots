local languages = {
	lua = {
		treesitter = 'lua',
		mason = { 'stylua', 'lua-language-server' },
	},
	web = {
		treesitter = {
			'javascript',
			'typescript',
			'html',
			'json',
			'tsx',
			'css',
			'scss',
		},
		mason = {
			'typescript-language-server',
			'prettier',
			'eslint-lsp',
			'html-lsp',
			'json-lsp',
			'css-lsp',
			'tailwindcss-language-server',
		},
	},
	rust = {
		treesitter = { 'rust', 'toml' },
		mason = 'rust-analyzer',
	},
	java = {
		treesitter = { 'java', 'html' },
		mason = { 'jdtls', 'lemminx', 'clang-format', 'checkstyle' },
	},
	csharp = {
		treesitter = 'c_sharp',
		mason = { 'csharp-language-server', 'netcoredbg' },
	},
}

vim.api.nvim_create_user_command('LangSetup', function(opts)
	local ts
	local mason
	for i = 1, #opts.fargs do
		local lang = string.lower(opts.fargs[i])
		local info = languages[lang]
		if not info then
			vim.print('No language setup for ' .. lang .. '.')
		else
			if info.treesitter then
				if type(info.treesitter) == 'table' then
					ts = (ts or '') .. ' ' .. table.concat(info.treesitter, ' ')
				else
					ts = (ts or '') .. ' ' .. info.treesitter
				end
			end
			if info.mason then
				if type(info.mason) == 'table' then
					mason = (mason or '') .. ' ' .. table.concat(info.mason, ' ')
				else
					mason = (mason or '') .. ' ' .. info.mason
				end
			end
			if info.custom then
				if type(info.custom) == 'function' then
					info.custom()
				else
					vim.print('Custom should be a lua function.')
				end
			end
		end
	end
	if ts then
		vim.cmd('TSUpdate ' .. ts)
	end
	if mason then
		vim.cmd('MasonInstall ' .. mason)
	end
end, { nargs = '+' })

return {
	{
		'simrat39/rust-tools.nvim',
		ft = 'rust',
	},
	{
		'saecki/crates.nvim',
		version = '*',
		dependencies = { 'nvim-lua/plenary.nvim' },
		event = 'BufEnter Cargo.toml',
		config = true,
	},
	{
		'elkowar/yuck.vim',
		event = 'BufReadPre *.yuck',
	},
}
