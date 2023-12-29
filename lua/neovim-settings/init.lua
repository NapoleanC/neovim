--< Written by: NapoleanC
--< Variables:

local Options = {
	--< Numbering:
	relativenumber = true,
	number = true,

	--< Tabbing:
	shiftwidth = 4,
	tabstop = 4,

	--< Wrapping:
	wrap = true,

	--< Colors:
	termguicolors = true,
}

--< Functions:

--< Main:

for Option, Value in pairs(Options) do
	vim.opt[Option] = Value
end

vim.g.mapleader = " "
