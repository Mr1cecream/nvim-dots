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
