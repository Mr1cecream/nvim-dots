-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim',
        '--branch=stable',
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    { 'folke/lazy.nvim', version = '*' },
    require('plugins.config.lsp'),
    require('plugins.config.syntax-highlight'),
    require('plugins.config.telescope'),
    require('plugins.config.neotree'),
    require('plugins.config.cokeline'),
    require('plugins.config.lualine'),
    require('plugins.config.flash'),
    require('plugins.config.gitsigns'),
    require('plugins.config.hbac'),
    require('plugins.config.popui'),
    require('plugins.config.prism'),
    require('plugins.config.spider'),
    require('plugins.config.comment'),
    require('plugins.config.languages'),
    require('plugins.config.neoscroll'),
    require('plugins.config.toggleterm'),

    default = {
        lazy = true,
    },
})
