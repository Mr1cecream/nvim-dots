local configs = {
    'autopairs', -- load autopairs config module
    'better-escape', -- load better-escape.nvim config module
    'bufferline', -- load bufferline config module
    'cmp', -- load cmp config module
    'indent-blankline', -- load indent-blankline.nvim config module
    'lsp', -- load nvim-lsp config module
    'lualine', -- load lualine config module
    'neoscroll', -- load neoscroll config module
    'nerdcommenter', -- load nerdcommenter config module
    'nvimtree', -- load nvim-tree config module
    'telescope', -- load telescope config module
    'toggleterm', -- load toggleterm config module
    'treesitter', -- load treesitter.nvim config module
    'trouble', -- load trouble.nvim config module
}

for _, conf in ipairs(configs) do
    require('plugconf/'..conf)
end
