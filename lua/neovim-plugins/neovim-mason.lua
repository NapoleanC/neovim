--< Written by: Napoleanc
--< Variables:

local Module = {
	--< Repository:
	"williamboman/mason.nvim",

	--< Dependencies:
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},

	--< Configuration:
	config = function()
		require("mason-lspconfig").setup()
		require("mason").setup()

		vim.keymap.set("n", "<C-m>", ":Mason<CR>", { silent = true })
	end,
}

--< Functions:

--< Main:

return Module
