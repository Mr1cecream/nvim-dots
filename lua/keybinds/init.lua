local configs = {
	'misc', -- load miscellaneous keybinds
	'bufferline', -- load bufferline keybinds
	'code', -- load code related keybinds
	'neogen', -- load neogen keybinds
	'nvimtree', -- load nvim-tree keybinds
	'telescope', -- load telescope.nvim keybinds
	'toggleterm', -- load toggleterm keybinds
	'trouble', -- load trouble.nvim keybinds
}

for _, conf in ipairs(configs) do
	PRequire('keybinds/' .. conf)
end
