local configs = {
    'bufferline', -- load bufferline keybinds
    'neogen', -- load neogen keybinds
    'nerdcommenter', -- load nerdcommenter keybinds
    'nvimtree', -- load nvim-tree keybinds
    'renamer', -- load renamer keybinds
    'telescope', -- load telescope.nvim keybinds
    'toggleterm', -- load toggleterm keybinds
    'trouble', -- load trouble.nvim keybinds
    'misc', -- load miscellaneous keybinds
}

for _, conf in ipairs(configs) do
    require('keybinds/' .. conf)
end
