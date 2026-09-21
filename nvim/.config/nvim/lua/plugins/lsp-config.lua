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
                'bash-language-server',
                'codelldb',
                'css-lsp',
                'dockerfile-language-server',
                'elm-language-server',
                'eslint-lsp',
                'groovy-language-server',
                'html-lsp',
                'json-lsp',
                'kotlin-debug-adapter',
                'kotlin-language-server',
                'lua-language-server',
                'python-lsp-server',
                'rust-analyzer',
                'tailwindcss-language-server',
                'terraform-ls',
                'tree-sitter-cli',
                'typescript-language-server',
                'yaml-language-server',
            },
        },
    },
    {
        'neovim/nvim-lspconfig',
    },
}
