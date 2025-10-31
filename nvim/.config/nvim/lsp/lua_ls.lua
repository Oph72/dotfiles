return {
  cmd = { 'lua-language-server' },
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      },
    },
  },
  filetypes = { 'lua' },
  root_markers = {
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
    '.git',
  },
}
