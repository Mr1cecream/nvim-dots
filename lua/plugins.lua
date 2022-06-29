vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- lsp and autocomplete
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'windwp/nvim-autopairs'
    use 'folke/trouble.nvim'
    use 'lukas-reineke/lsp-format.nvim'
    use 'ray-x/lsp_signature.nvim'
    -- tools
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use { 'akinsho/bufferline.nvim', tag = "v2.*" }

    use { 'akinsho/toggleterm.nvim', tag = "v1.*" }
    use { 'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use { 'hood/popui.nvim', requires = { 'RishabhRD/popfix' } }
    use 'zane-/howdoi.nvim'
    use 'folke/which-key.nvim'

    use { 'phaazon/hop.nvim', branch = 'v1' }
    use 'nacro90/numb.nvim'
    use 'karb94/neoscroll.nvim'
    use 'numToStr/Comment.nvim'
    use 'danymat/neogen'
    use 'max397574/better-escape.nvim'
    use 'tpope/vim-repeat'
    use 'jghauser/mkdir.nvim'

    use 'nvim-neorg/neorg'
    -- icons
    use 'kyazdani42/nvim-web-devicons'
    -- syntax highlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'sheerun/vim-polyglot', setup = require('plugconf/polyglot') }
    use 'folke/todo-comments.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    -- language servers
    use 'elkowar/yuck.vim'
    -- language specific
    use 'simrat39/rust-tools.nvim'
    use 'Saecki/crates.nvim'
    -- colorschemes
    use 'Shatur/neovim-ayu'

    use 'lewis6991/impatient.nvim'
end)
