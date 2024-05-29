return {
    'chadcat7/prism',
    events = { 'UIEnter' },
    config = function()
        require('prism'):setup({
            customSchemes = {
                {
                    name = 'nirvana',
                    comment = '#5a5858',
                    background = '#121111',
                    darker = '#0e0d0d',
                    black = '#121111',
                    foreground = '#dfdddd',
                    cursorline = '#191919',
                    cursor = '#dfdddd',
                    color0 = '#1b1b1b',
                    color1 = '#af575b',
                    color2 = '#7d8a6b',
                    color3 = '#caac79',
                    color4 = '#7d95ae',
                    color5 = '#a07ea7',
                    color6 = '#6d8f8a',
                    color7 = '#b7b7b7',
                    color8 = '#272727',
                    color9 = '#c15a5e',
                    color10 = '#8fa176',
                    color11 = '#d8b170',
                    color12 = '#8097fb',
                    color13 = '#b183ba',
                    color14 = '#8cb5af',
                    color15 = '#d4d5d5',
                },
            },
            currentTheme = 'nirvana',
            customFiles = vim.fn.stdpath('config') .. '/lua/highlights',
        })
    end,
    commit = '998416c5c3873209d7fb49b749a5b445b8316417', -- before break
}
