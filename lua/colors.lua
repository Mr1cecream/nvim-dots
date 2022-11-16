vim.opt.termguicolors = true

local ok, ayu = pcall(require, 'ayu')
if not ok then
	print('Failed to load ayu')
	return
end
ayu.setup({
	mirage = true,
	overrides = {
		Normal = { bg = '#242936' },
		CursorLine = { bg = '#1A1F29' },
		NvimTreeNormal = { bg = '#1f2430' },
		NvimTreeWinSeperator = { fg = '#171B24' },
	},
})

ayu.colorscheme()
