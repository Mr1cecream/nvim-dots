vim = vim

function PRequire(module)
    local ok, loaded = pcall(require, module)
    if not ok then
        print('Failed to load ' .. module)
        return
    end
    return loaded
end

local modules = {
    'opts', -- load options module
    'plugins', -- load plugins module
    'colors', -- load colors module
    'plugconf', -- load plugin configs module
    'keybinds', -- load keybinds module
}

for _, mod in ipairs(modules) do
    require(mod)
end
