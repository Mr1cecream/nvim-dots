local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

--  move to window with <ctrl> arrow keys
keymap('n', '<Leader>n', '<C-w>h', opts)
keymap('n', '<Leader>e', '<C-w>j', opts)
keymap('n', '<Leader>i', '<C-w>k', opts)
keymap('n', '<Leader>o', '<C-w>l', opts)

-- move lines
keymap('n', '<A-Up>', '<cmd>m .-2<cr>==', opts)
keymap('n', '<A-Down>', '<cmd>m .+1<cr>==', opts)
keymap('i', '<A-Up>', '<esc><cmd>m .-2<cr>==gi', opts)
keymap('i', '<A-Down>', '<esc><cmd>m .+1<cr>==gi', opts)
keymap('v', '<A-Up>', ":m '<-2<cr>gv=gv", opts)
keymap('v', '<A-Down>', ":m '>+1<cr>gv=gv", opts)

-- clear search with <esc>
keymap({ 'i', 'n' }, '<Esc>', '<CMD>noh<CR><Esc>', opts)

-- better indent
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- better up/down
keymap({ 'n', 'x' }, '<Up>', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, noremap = true })
keymap({ 'n', 'x' }, '<Down>', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, noremap = true })
