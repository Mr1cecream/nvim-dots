local ok, telescope = pcall(require, 'telescope')
if not ok then
    print('Failed to load Telescope')
    return
end
ok = pcall(telescope.load_extension, 'howdoi')
if not ok then
    print('Failed to load Telescope extension: howdoi')
end

-- require('telescope').setup {
-- extensions = {
-- howdoi = {
-- command_executor = { 'python', '-m' },
-- }
-- }
-- }
