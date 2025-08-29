--This is used to call LSP services
vim.lsp.enable({
  'clangd',
  'lua_ls'
})


--Enable LSP dialog
vim.diagnostic.config({ virtual_text = true })

