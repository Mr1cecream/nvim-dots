require('impatient')

local configs = {
    'autopairs', -- load autopairs config module
    'better-escape', -- load better-escape.nvim config module
    'bufferline', -- load bufferline config module
    'cmp', -- load cmp config module
    'indent-blankline', -- load indent-blankline.nvim config module
    'lsp', -- load nvim-lsp config module
    'lualine', -- load lualine config module
    'neorg', -- load neorg config module
    'neoscroll', -- load neoscroll config module
    'nerdcommenter', -- load nerdcommenter config module
    'numb', -- load numb.nvim config module
    'nvimtree', -- load nvim-tree config module
    'popui', -- load popui.nvim config module
    'telescope', -- load telescope config module
    'toggleterm', -- load toggleterm config module
    'treesitter', -- load treesitter.nvim config module
    'trouble', -- load trouble.nvim config module
}

for _, conf in ipairs(configs) do
    require('plugconf/' .. conf)
end

require('hop').setup()
require('neogen').setup()
require('todo-comments').setup()
require('rust-tools').setup()
require('crates').setup()
