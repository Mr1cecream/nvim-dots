local set = vim.opt

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
set.wildmode = { 'longest', 'list' }
set.ttyfast = true
set.shiftwidth = 4
set.completeopt = { 'menu', 'menuone', 'noselect' }
set.mouse = 'a'
set.clipboard = 'unnamedplus'
set.signcolumn = 'auto'
set.scrolloff = 5
set.wrap = true
set.linebreak = true
set.list = false
set.termguicolors = true

vim.cmd([[
syntax enable
filetype plugin on
filetype plugin indent on
]])

vim.g.mapleader = ' '
