-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'ellisonleao/gruvbox.nvim'}

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    use('theprimeagen/harpoon')
    use('mbbill/undotree')

    use('tpope/vim-fugitive')

    -- LSP
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('lspconfig').lua_ls.setup({
                settings = {
                    Lua = {
                        runtime = { version = 'LuaJIT' },
                        diagnostics = { globals = { 'vim', 'require' } },
                        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
                        telemetry = { enable = false },
                    },
                },
            })
        end
    }
    use({
        'hrsh7th/nvim-cmp',
        config = function ()
            local cmp = require("cmp")
            cmp.setup({
                preselect = cmp.PreselectMode.Item,
                completion = {
                    completeopt = "menu,menuone,noinsert",
                },
                mapping = {
                    ["<Cr>"] = cmp.mapping.confirm({ select = true }),
                    ['<C-Space>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.close()
                        else
                            cmp.complete()
                        end
                    end, { 'i', 'c' }),
                }
            })
            vim.cmd("highlight CmpItemSel guibg=#3e4452 guifg=#ffffff")

        end

    })
    use({'hrsh7th/cmp-nvim-lsp'})

    use({'jose-elias-alvarez/null-ls.nvim'})
    use({'MunifTanjim/eslint.nvim'})

    use({"williamboman/mason.nvim"})
    use({"williamboman/mason-lspconfig.nvim"})

    use({"Vimjas/vim-python-pep8-indent"})

end)
