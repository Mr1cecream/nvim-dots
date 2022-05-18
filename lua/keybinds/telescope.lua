local keymap = vim.keymap.set

keymap('n',
    [[<Leader>ff]],
    function ()
        require('telescope.builtin').find_files()
    end,
    { noremap = true, silent = true }
)
