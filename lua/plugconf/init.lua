require('impatient')

--- Protected require and setup
---@param module string
---@param config any
function PSetup(module, config)
    if module == nil then
        return
    end
    local ok, loaded = pcall(require, module)
    if not ok then
        print('Failed to load ' .. module)
        return
    end
    loaded.setup(config)
end

local configs = {
    'autopairs', -- load autopairs config module
    'better-escape', -- load better-escape.nvim config module
    'bufferline', -- load bufferline config module
    'cmp', -- load cmp config module
    'lsp', -- load nvim-lsp config module
    'lualine', -- load lualine config module
    'neorg', -- load neorg config module
    'neoscroll', -- load neoscroll config module
    'numb', -- load numb.nvim config module
    'nvimtree', -- load nvim-tree config module
    'popui', -- load popui.nvim config module
    'telescope', -- load telescope config module
    'toggleterm', -- load toggleterm config module
    'treesitter', -- load treesitter.nvim config module
    'trouble', -- load trouble.nvim config module
}

for _, conf in ipairs(configs) do
    PRequire('plugconf/' .. conf)
end

PSetup('hop')
PSetup('neogen')
PSetup('todo-comments')
PSetup('rust-tools')
PSetup('crates')
PSetup('indent_blankline')
PSetup('Comment')
PSetup('which-key')
PSetup('project_nvim')
