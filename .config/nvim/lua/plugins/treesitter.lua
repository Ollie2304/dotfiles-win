return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup
        {
            -- list of parsers to install, first 5 should always be installed
            ensure_installed = {"c", "lua", "vim", "vimdoc", "query",
            "markdown",
            "markdown_inline",
            "javascript",
            "c_sharp",
            "python",
        },
            -- install missing parsers when entering a buffer
            auto_install = true,

            -- install parsers synchronously
            sync_install = false,
            
            -- enable highlighting
            highlight = {
                enable = true,

                additional_vim_regex_highlighting = false,
            },
        }
    end,
}
