return {
    'lewis6991/gitsigns.nvim',
    opts = {
        on_attach = function(bufnr)
            local gs = package.loaded.gitsigns

            local function map(mode, l, r, opts)
                opts = opts or {}
                opts.buffer = bufnr
                vim.keymap.set(mode, l, r, opts)
            end

            map('n', '<leader>hs', gs.stage_hunk, {
                desc = 'gitsigns stage hunk',
            })
            map('n', '<leader>hr', gs.reset_hunk, {
                desc = 'gitsigns reset hunk',
            })
            map('v', '<leader>hs', function()
                gs.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
            end, { desc = 'gitsigns stage hunk' })
            map('v', '<leader>hr', function()
                gs.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
            end, { desc = 'gitsigns reset hunk' })
            map('n', '<leader>hS', gs.stage_buffer, {
                desc = 'gitsigns stage buffer',
            })
            map('n', '<leader>hu', gs.undo_stage_hunk, {
                desc = 'gitsigns undo stage hunk',
            })
            map('n', '<leader>hR', gs.reset_buffer, {
                desc = 'gitsigns reset buffer',
            })
            map('n', '<leader>hp', gs.preview_hunk, {
                desc = 'gitsigns preview hunk',
            })
            map('n', '<leader>hb', function()
                gs.blame_line({ full = true })
            end, { desc = 'gitsigns blame line' })
            map('n', '<leader>hl', gs.toggle_current_line_blame, {
                desc = 'gitsigns toggle line blame',
            })
            map('n', '<leader>hd', gs.diffthis, { desc = 'gitsigns diffthis' })
            map('n', '<leader>hD', function()
                gs.diffthis('~')
            end, { desc = 'gitsigns diffthis ~' })
            map('n', '<leader>hd', gs.toggle_deleted, {
                desc = 'gitsigns toggle deleted',
            })
        end,
    },
}
