return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-dap",
        "jose-elias-alvarez/null-ls.nvim",
        "simrat39/rust-tools.nvim",
    }

    use 'github/copilot.vim'

    use 'nvim-lua/plenary.nvim'

    use 'nvim-telescope/telescope.nvim'

    use 'BurntSushi/ripgrep'

    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

    use 'nvim-treesitter/nvim-treesitter'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use 'folke/tokyonight.nvim'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        }
    }

    use {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
    }

    use {
        "leoluz/nvim-dap-go",
        "mxsdev/nvim-dap-vscode-js"
    }

    use {
        "microsoft/vscode-js-debug",
        opt = true,
        run = "npm install --legacy-peer-deps && npm run compile"
    }

    use 'andweeb/presence.nvim'
    use 'akinsho/toggleterm.nvim'
    use 'ojroques/nvim-bufdel'

    use 'tpope/vim-repeat'
    use 'ggandor/leap.nvim'

    use "startup-nvim/startup.nvim"

    require('editorconfig').properties.foo = function(bufnr, val)
        vim.b[bufnr].foo = val
    end
end)
