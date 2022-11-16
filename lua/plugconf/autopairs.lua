PSetup('nvim-autopairs')

local ok, cmp_autopairs = pcall(require, 'nvim-autopairs.completion.cmp')
if not ok then
	print('Failed to load cmp-autopairs')
	return
end

local cmp
ok, cmp = pcall(require, 'cmp')
if not ok then
	print('Failed to load cmp')
	return
end

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
