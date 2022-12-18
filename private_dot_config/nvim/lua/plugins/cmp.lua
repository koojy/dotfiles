local cmp = require("cmp")
local lspkind = require('lspkind')

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-k>'] = cmp.mapping.complete(),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }
	}, {
		{ name = "buffer" }
	}	),
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol',
			maxwidth = 50,

			before = function (entry, vim_item)
				return vim_item
			end
		})
	}
})
