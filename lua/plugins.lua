vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- lsp and autocomplete
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'windwp/nvim-autopairs'
    -- tools
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use {'akinsho/bufferline.nvim', tag = "v2.*"}
    use {'akinsho/toggleterm.nvim', tag = "v1.*"}
    use {'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    use 'karb94/neoscroll.nvim'
    use 'lukas-reineke/indent-blankline.nvim'

    use 'preservim/nerdcommenter'
    -- icons
    use 'kyazdani42/nvim-web-devicons'
    -- syntax highlighting
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'sheerun/vim-polyglot', setup = require('plugconf/polyglot')}
    -- language servers
    use 'Omnisharp/omnisharp-vim'
    use 'elkowar/yuck.vim'
    -- colorschemes
    use 'Shatur/neovim-ayu'
end)
