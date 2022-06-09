local configs = {
    'cmp', -- load cmp config module
    'lsp', -- load nvim-lsp config module
    'nvimtree', -- load nvim-tree config module
    'lualine', -- load lualine config module
    'bufferline', -- load bufferline config module
    'toggleterm', -- load toggleterm config module
    'nerdcommenter', -- load nerdcommenter config module
    'autopairs', -- load autopairs config module
    'neoscroll', -- load neoscroll config module
    'indent-blankline', -- load indent-blankline.nvim config module
    'treesitter', -- load treesitter.nvim config module
    'trouble', -- load trouble.nvim config module
    'better-escape', -- load better-escape.nvim config module
}

for _, conf in ipairs(configs) do
    require('plugconf/'..conf)
end
