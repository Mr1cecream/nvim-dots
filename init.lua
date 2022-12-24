vim = vim

--- Protected require
---@param module string
---@param[opt=nil] callback function
---@return table
function PRequire(module, callback)
    local ok, loaded = pcall(require, module)
    if not ok then
        print('Failed to load ' .. module)
        return nil
    end
    if callback ~= nil then
        callback(loaded)
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
