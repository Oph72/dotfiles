vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', 'Q', '<nop>')

local group = vim.api.nvim_create_augroup("Jenkinsfile", { clear = true })
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" },
  { pattern = "Jenkinsfile", command = "set filetype=groovy", group = group })
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" },
  { pattern = "*.tfvars", command = "set filetype=terraform", group = group })
