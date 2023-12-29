--< Written by: NapoleanC
--< Variables:

local Module = {
	--< Repository:
	"nvim-lualine/lualine.nvim",

	--< Dependencies:
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	--< Configuration:
	config = function()
		require("lualine").setup({
			theme = "catppuccin",
		})
	end,
}

--< Functions:

--< Main:

return Module
