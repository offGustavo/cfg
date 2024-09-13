return {
		"neovim/nvim-lspconfig",
		config = function()
		local lspconfig = require('lspconfig')
		lspconfig.jdtls.setup({})
		lspconfig.lua_ls.setup({})
		lspconfig.markdown_oxide.setup({})
		end
}

