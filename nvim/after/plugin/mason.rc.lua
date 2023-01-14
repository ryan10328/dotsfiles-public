-- mason, mason-lspconfig setup

require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = { 'sumneko_lua', 'volar', 'tsserver' }
}

-- setup lua language server
local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end

lspconfig.sumneko_lua.setup {}
lspconfig.volar.setup {}
lspconfig.tsserver.setup {}
