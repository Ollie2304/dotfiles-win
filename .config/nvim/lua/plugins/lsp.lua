return
{

    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.keymap.set("n", "K", vim.lsp.buf.hover,{})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition,{})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,{})
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            _G.lsp_capabilities = capabilities
        end
    },

    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                },
            })
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {"mason.nvim"},
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls"}
            })
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                    capabilities = _G.lsp_capabilities
                end,
            })
        end,
    }
}

