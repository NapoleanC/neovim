--< Written by: NapoleanC
--< Variables:

local Module = {
	--< Repository:
	"neovim/nvim-lspconfig",

	--< Dependencies:
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
	},

	--< Configuration:
	config = function()
		local LSPConfig = require("lspconfig")
		local LSPs = {
			"lua_ls"
		}

		local Capabilities = require("cmp_nvim_lsp").default_capabilities()
		for _, LSP in ipairs(LSPs) do
			LSPConfig[LSP].setup({
				capabilities = Capabilities
			})
		end
	end
}

--< Functions:

--< Main:

return Module
