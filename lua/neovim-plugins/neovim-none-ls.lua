--< Written by: NapoleanC
--< Variables:

local Module = {
	--< Repository:
	"nvimtools/none-ls.nvim",

	--< Configuration:
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
			},
		})

		vim.keymap.set("n", "<C-f>", ":lua vim.lsp.buf.format()<CR>", { silent = true })
	end,
}

--< Functions:

--< Main:

return Module
