--< Written by: NapoleanC
--< Variables:

local Module = {
	--< Repository:
	"catppuccin/nvim",

	--< Name:
	name = "catppuccin",

	--< Configuration:
	config = function()
		vim.cmd([[colorscheme catppuccin]])
	end,
}

--< Functions:

--< Main:

return Module
