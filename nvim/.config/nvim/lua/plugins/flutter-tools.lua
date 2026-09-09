return {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
        require('flutter-tools').setup({
            ui = { border = 'rounded' },
            debugger = {
                enabled = true,
            },
            lsp = {
                settings = {
                    completeFunctionCalls = true,
                    enableSnippets = true,
                    updateImportsOnRename = true,
                    renameFilesWithClasses = 'prompt',
                },
            },
        })
    end,
}
