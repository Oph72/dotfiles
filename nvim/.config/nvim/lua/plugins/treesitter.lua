return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local cargo_bin = (vim.env.CARGO_HOME or vim.fn.expand('~/.cargo')) .. '/bin'
        if vim.fn.executable('tree-sitter') == 0 and vim.fn.executable(cargo_bin .. '/tree-sitter') == 1 then
            vim.env.PATH = cargo_bin .. ':' .. vim.env.PATH
        end

        require('nvim-treesitter').setup({
            install_dir = vim.fn.stdpath('data') .. '/site',
        })

        require('nvim-treesitter').install({
            'bash',
            'css',
            'dockerfile',
            'html',
            'javascript',
            'json',
            'lua',
            'markdown',
            'markdown_inline',
            'sql',
            'tsx',
            'typescript',
            'yaml',
            'java',
            'kotlin',
            'rust',
        })

        local group = vim.api.nvim_create_augroup('treesitter_features', { clear = true })
        vim.api.nvim_create_autocmd('FileType', {
            group = group,
            callback = function()
                if pcall(vim.treesitter.start) then
                    vim.wo.foldmethod = 'expr'
                    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end
            end,
        })
    end
}
