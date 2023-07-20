require("mason").setup()
require("mason-lspconfig").setup({
	ensure_isntalled={"html"}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").html.setup{
	on_attach=on_attach,
	capabilities = capabilities,
}
