require("mason").setup()
require("mason-lspconfig").setup({
	ensure_isntalled={"lua_ls"}
})

local on_attach = function(_,_)
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration )
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition )
	vim.keymap.set('n', 'K', vim.lsp.buf.hover )
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation )
end
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup{
	on_attach=on_attach,
	capabilities = capabilities,
}
