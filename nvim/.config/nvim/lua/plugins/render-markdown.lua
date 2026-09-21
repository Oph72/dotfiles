return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ft = { 'markdown' },
    keys = {
        {
            '<leader>mt',
            function()
                require('render-markdown').toggle()
            end,
            desc = 'Toggle markdown rendering',
        },
    },
    opts = {
        -- signcolumn is always on, so keep the gutter free of heading/code signs
        heading = { sign = false },
        code = {
            sign = false,
            width = 'block',
            min_width = 45,
            right_pad = 2,
        },
    },
}
