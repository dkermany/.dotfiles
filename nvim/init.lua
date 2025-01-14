require("dkermany")

-- Required since this config inside after/plugin/lsp.lua does not work otherwise
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        require('lspconfig').lua_ls.setup({
            cmd = { "/home/mstudxk5/.local/share/nvim/mason/bin/lua-language-server" },
            settings = {
                Lua = {
                    runtime = { version = 'LuaJIT' },
                    diagnostics = { globals = { 'vim', 'require' } },
                    workspace = { library = vim.api.nvim_get_runtime_file("", true) },
                    telemetry = { enable = false },
                },
            },
        })
    end,
})

