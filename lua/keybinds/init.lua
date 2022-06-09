local configs = {
    'toggleterm', -- load toggleterm keybinds
    'nvimtree', -- load nvim-tree keybinds
    'nerdcommenter', -- load nerdcommenter keybinds
    'telescope', -- load telescope.nvim keybinds
    'trouble', -- load trouble.nvim keybinds
    'bufferline', -- load bufferline keybinds
    'misc', -- load miscellaneous keybinds
}

for _, conf in ipairs(configs) do
    require('keybinds/'..conf)
end
