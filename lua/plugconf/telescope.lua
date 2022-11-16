local function PLoadExtension(telescope, extension)
	local ok = pcall(telescope.load_extension, extension)
	if not ok then
		print('Failed to load Telescope extension: howdoi')
	end
end

local ok, telescope = pcall(require, 'telescope')
if not ok then
	print('Failed to load Telescope')
	return
end

PLoadExtension(telescope, 'howdoi')
PLoadExtension(telescope, 'projects')

-- require('telescope').setup {
-- extensions = {
-- howdoi = {
-- command_executor = { 'python', '-m' },
-- }
-- }
-- }
