return {
    {
        'mason-org/mason.nvim',
        opts = {},
    },
    {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        dependencies = { 'mason-org/mason.nvim' },
        opts = {
            ensure_installed = {
                'codelldb',
                'elm-language-server',
                'groovy-language-server',
                'kotlin-debug-adapter',
                'kotlin-language-server',
                'lua-language-server',
                'python-lsp-server',
                'rust-analyzer',
                'terraform-ls',
            },
        },
    },
    {
        'neovim/nvim-lspconfig',
    },
}
