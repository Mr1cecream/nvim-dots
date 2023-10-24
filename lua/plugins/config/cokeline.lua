return {
    {
        'willothy/nvim-cokeline',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
        },
        keys = {
            { '<Leader>bo', '<CMD>bnext<CR>' },
            { '<Leader>bn', '<CMD>bprev<CR>' },
            { '<Leader>bd', '<CMD>bdelete<CR>' },
            {
                '<Leader>bp',
                function()
                    require('cokeline.mappings').pick('focus')
                end,
            },
        },
        config = function()
            local get_hl_attr = require('cokeline.hlgroups').get_hl_attr
            local is_picking_focus = require('cokeline.mappings').is_picking_focus
            local is_picking_close = require('cokeline.mappings').is_picking_close

            require('cokeline').setup({
                show_if_buffers_are_at_least = 2,
                pick = {
                    -- optimize for Colemak DH layout
                    letters = 'arstneiogmkhxcdvzuywfplbjq;ARSTNEIOGMKHXCDVZUYWFPLBJQ',
                },
                sidebar = {
                    filetype = 'neo-tree',
                    components = {
                        {
                            text = 'Neotree',
                            style = 'bold',
                        },
                    },
                },
                default_hl = {
                    fg = function(buffer)
                        return buffer.is_focused and get_hl_attr('Normal', 'fg') or get_hl_attr('Comment', 'fg')
                    end,
                    bg = get_hl_attr('ColorColumn', 'bg'),
                },
                fill_hl = 'TabLineFill',
                components = {
                    {
                        text = function(buffer)
                            return (buffer.index ~= 1) and '▏' or ''
                        end,
                    },
                    {
                        text = ' ',
                    },
                    {
                        text = function(buffer)
                            return (is_picking_focus() or is_picking_close()) and buffer.pick_letter
                                or buffer.devicon.icon
                        end,
                        fg = function(buffer)
                            return (is_picking_focus() and get_hl_attr('DiagnosticWarn', 'fg'))
                                or (is_picking_close() and get_hl_attr('DiagnosticError', 'fg'))
                                or buffer.devicon.color
                        end,
                        style = function(_)
                            return (is_picking_focus() or is_picking_close()) and 'italic,bold' or nil
                        end,
                    },
                    {
                        text = ' ',
                    },
                    {
                        text = function(buffer)
                            return buffer.unique_prefix
                        end,
                        fg = get_hl_attr('Comment', 'fg'),
                        italic = true,
                    },
                    {
                        text = function(buffer)
                            return buffer.filename .. ' '
                        end,
                        style = function(buffer)
                            return buffer.is_focused and 'bold' or nil
                        end,
                    },
                },
            })
        end,
        lazy = false,
    },
}
