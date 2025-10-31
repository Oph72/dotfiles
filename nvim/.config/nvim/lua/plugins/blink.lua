return {
    'saghen/blink.cmp',
    dependencies = { 
        'L3MON4D3/LuaSnip', version = 'v2.*' },
    version = '1.*',
    opts = {
        snippets = { preset = 'luasnip' },
        keymap = { preset = 'default' },
        appearance = {
            nerd_font_variant = 'mono'
        },
        completion = { documentation = { auto_show = true } },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = 'prefer_rust_with_warning' }
    },
    opts_extend = { 'sources.default' }
}
