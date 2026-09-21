local prettier_filetypes = {
    css = true,
    html = true,
    javascript = true,
    javascriptreact = true,
    json = true,
    jsonc = true,
    markdown = true,
    typescript = true,
    typescriptreact = true,
    yaml = true,
}

return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
        {
            '<leader>f',
            function()
                require('conform').format({ async = true, lsp_format = 'fallback' })
            end,
            mode = { 'n', 'v' },
            desc = 'Format buffer',
        },
    },
    opts = function()
        return {
            formatters_by_ft = {
                css = { 'prettier', stop_after_first = true },
                html = { 'prettier', stop_after_first = true },
                javascript = { 'prettier', stop_after_first = true },
                javascriptreact = { 'prettier', stop_after_first = true },
                json = { 'prettier', stop_after_first = true },
                jsonc = { 'prettier', stop_after_first = true },
                markdown = { 'prettier', stop_after_first = true },
                typescript = { 'prettier', stop_after_first = true },
                typescriptreact = { 'prettier', stop_after_first = true },
                yaml = { 'prettier', stop_after_first = true },
            },
            formatters = {
                prettier = {
                    cwd = require('conform.util').root_file({
                        '.prettierrc',
                        '.prettierrc.json',
                        '.prettierrc.json5',
                        '.prettierrc.js',
                        '.prettierrc.cjs',
                        '.prettierrc.mjs',
                        '.prettierrc.toml',
                        'prettier.config.js',
                        'prettier.config.cjs',
                        'prettier.config.mjs',
                    }),
                    require_cwd = true,
                },
            },
            format_on_save = function(bufnr)
                if not prettier_filetypes[vim.bo[bufnr].filetype] then
                    return
                end

                return { timeout_ms = 3000, lsp_format = 'never' }
            end,
        }
    end,
}
