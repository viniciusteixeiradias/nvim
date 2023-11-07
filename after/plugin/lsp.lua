local lsp = require('lsp-zero').preset("recommended")

lsp.ensure_installed({
	'tsserver',
	'eslint'
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({'tsserver', 'eslint'})

lsp.setup()

vim.diagnostic.config({ virtual_text = true })
