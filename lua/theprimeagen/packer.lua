-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-tree/nvim-web-devicons' },
        }
    }
    use "smartpde/telescope-recent-files"

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            -- vim.cmd('colorscheme rose-pine')
        end
    })
    use({
        "folke/tokyonight.nvim",
        config = function ()
            vim.cmd("colorscheme tokyonight")
        end
    })


    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use("folke/zen-mode.nvim")
    use("airblade/vim-gitgutter")
    use("preservim/nerdtree")
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use("ryanoasis/vim-devicons")

    use { 'fgheng/winbar.nvim' }

    use "glepnir/lspsaga.nvim"

    use "RRethy/vim-illuminate"
    use "tpope/vim-commentary"

    use "windwp/nvim-ts-autotag"

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
--    use {
--        'kamykn/spelunker.vim',
--        requires = { "kamykn/popup-menu.nvim" }
--    }

    use 'tpope/vim-surround'

    use "vv9k/vim-github-dark"
    use "kien/ctrlp.vim"
    use "frazrepo/vim-rainbow"

    -- debugging
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'mfussenegger/nvim-dap-python'
    use 'theHamsta/nvim-dap-virtual-text'
    use {
        "danielfalk/smart-open.nvim",
        requires = { "tami5/sqlite.lua" }
        -- requires = {
        --     { "tami5/sqlite.lua" },
        --     { 'kyazdani42/nvim-web-devicons', opt = true },
        -- }
    }
    use 'f-person/git-blame.nvim'


end)
