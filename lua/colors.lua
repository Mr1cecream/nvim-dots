vim.opt.termguicolors = true

--[[ PRequire('ayu', function(ayu)
    ayu.setup({
        mirage = true,
        overrides = {
            Normal = { bg = '#242936' },
            CursorLine = { bg = '#1A1F29' },
            NvimTreeNormal = { bg = '#1f2430' },
            NvimTreeWinSeperator = { fg = '#171B24' },
        },
    })

    ayu.colorscheme()
end) ]]

vim.cmd.colorscheme('nirvana')
