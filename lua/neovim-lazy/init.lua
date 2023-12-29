--< Written by: NapoleanC
--< Variables:

--< Functions:

local function Bootstrap()
	local LazyPath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not vim.loop.fs_stat(LazyPath) then
		vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/folke/lazy.nvim.git",
			"--branch=stable",
			LazyPath
		})
	end

	vim.opt.rtp:prepend(LazyPath)
end

--< Main:

Bootstrap()

require("lazy").setup("neovim-plugins")
