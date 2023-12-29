--< Written by: NapoleanC
--< Variables:

local Module = {
	--< Repository:
	"nvim-neo-tree/neo-tree.nvim",

	--< Dependencies:
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},

	--< Branch:
	branch = "v3.x",

	--< Configuration:
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree<CR>", {silent=true})
	end
}

--< Functions:

--< Main:

return Module
