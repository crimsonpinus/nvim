local keyMapper = require('utils.keyMapper').mapKey
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup()
        end

    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { "lua_ls", "tsserver", "gopls", "jdtls", "kotlin_language_server", "pyright"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.gopls.setup({})
            lspconfig.jdtls.setup({})
            lspconfig.kotlin_language_server.setup({})
            lspconfig.pyright.setup({})

        keyMapper('K', vim.lsp.buf.hover)
        keyMapper('gd', vim.lsp.buf.definition)
        keyMapper('<leader>ca', vim.lsp.buf.code_action)
        end
    }
}


