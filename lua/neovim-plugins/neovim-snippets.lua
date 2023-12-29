--< Written by: NapoleanC
--< Variables:

local Module = {
	--< Repository:
	"L3MON4D3/LuaSnip",

	--< Dependencies:
	dependencies = {
		"saadparwaiz1/cmp_luasnip",
	},

	--< Configuration:
	config = function()
		local LuaSnip = require("luasnip")
		local CMP = require("cmp")

		CMP.setup({
			snippet = {
				expand = function(Arguments)
					LuaSnip.lsp_expand(Arguments.body)
				end,
			},

			mapping = CMP.mapping.preset.insert({
				["<C-u>"] = CMP.mapping.scroll_docs(-4),
				["<C-d>"] = CMP.mapping.scroll_docs(4),

				["<C-Space>"] = CMP.mapping.complete(),
				["<CR>"] = CMP.mapping.confirm({
					behavior = CMP.ConfirmBehavior.Replace,
					select = true,
				}),

				["<Tab>"] = CMP.mapping(function(Fallback)
					if CMP.visible() then
						CMP.select_next_item()
					elseif LuaSnip.expand_or_jumpable() then
						LuaSnip.expand_or_jump()
					else
						Fallback()
					end
				end, { "i", "s" }),

				["<S-Tab>"] = CMP.mapping(function(Fallback)
					if CMP.visible() then
						CMP.select_prev_item()
					elseif LuaSnip.jumpable(-1) then
						LuaSnip.jump(-1)
					else
						Fallback()
					end
				end, { "i", "s" }),
			}),

			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
			},
		})
	end,
}

--< Functions:

--< Main:

return Module
