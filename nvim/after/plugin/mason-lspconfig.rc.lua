local status, mason_lsp = pcall(require, 'mason-lspconfig')

if (not status) then return end

mason_lsp.setup({
  ensure_installed = { "sumneko_lua" }
})
