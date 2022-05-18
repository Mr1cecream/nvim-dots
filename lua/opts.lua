local set = vim.opt

-- set.nocompatible = true
set.showmatch = true
set.ignorecase = true
set.hlsearch = true
set.incsearch = true
set.tabstop = 4
set.softtabstop = 4
set.expandtab = true
set.autoindent = true
set.number = true
set.cursorline = true
set.wildmode = {'longest', 'list'}
set.ttyfast = true
set.shiftwidth = 4
set.completeopt = {'menu', 'menuone', 'noselect'}
set.mouse = 'a'
set.clipboard = 'unnamedplus'
set.signcolumn = 'number'
set.scrolloff = 5

vim.cmd [[
	syntax enable
	filetype plugin on
	filetype plugin indent on
    autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
