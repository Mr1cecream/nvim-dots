PRequire('telescope', function(telescope)
    --- Protected load extension
    ---@param extension string
    local function PLoadExtension(extension)
        local ok = pcall(telescope.load_extension, extension)
        if not ok then
            print('Failed to load Telescope extension: ' .. extension)
        end
    end

    PLoadExtension('howdoi')
    PLoadExtension('projects')
end)
