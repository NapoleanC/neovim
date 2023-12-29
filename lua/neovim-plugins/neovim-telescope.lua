--< Written by: NapoleanC
--< Variables:

local Module = {
	--< Repository:
	"nvim-telescope/telescope.nvim",

	--< Dependencies:
	dependencies = {
		"nvim-lua/plenary.nvim"
	},

	--< Configuration:
	config = function()
		local Builtins = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", Builtins.find_files, {})
		vim.keymap.set("n", "<leader>fg", Builtins.live_grep, {})
		vim.keymap.set("n", "<leader>fb", Builtins.buffers, {})
		vim.keymap.set("n", "<leader>fh", Builtins.help_tags, {})
	end
}

--< Functions:

--< Main:

return Module
