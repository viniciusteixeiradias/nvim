local lsp = require('lsp-zero').preset("recommended")

lsp.ensure_installed({
	'tsserver',
	'eslint'
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({'tsserver', 'eslint'})

lsp.setup()
