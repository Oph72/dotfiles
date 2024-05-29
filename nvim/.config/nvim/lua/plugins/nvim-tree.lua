return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        vim.g.loaded_netrwPlugin = 1
        vim.opt.termguicolors = true

        require('nvim-tree').setup({
            view = {
                width = 45,
            },
        })

        vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>')
        vim.keymap.set('n', '<leader>tf', ':NvimTreeFindFile<CR>')
        vim.keymap.set('n', '<leader>tr', ':NvimTreeResize<CR>')
    end
}
