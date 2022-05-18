require('bufferline').setup {
    -- mode = 'tabs',
    diagnostics = 'nvim_lsp',
    offsets = {
        {
            filetype = 'NvimTree',
            text = 'File Explorer',
            highlight = 'Directory',
            text_align = "left"
        }
    }
}
