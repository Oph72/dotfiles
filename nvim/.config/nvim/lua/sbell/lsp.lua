vim.lsp.enable({
  'elmls',
  'groovyls',
  'kotlin_language_server',
  'lua_ls',
  'pylsp',
  'rust_analyzer',
  'terraformls',
})

vim.diagnostic.config({
  virtual_lines = true,
  virtual_text = false,
  float = {
    border = 'rounded',
    source = true,
  },
  jump = {
  },
  severity_sort = false,
  update_in_insert = false,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf })
  end,
})

--[[vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end
})]]--
