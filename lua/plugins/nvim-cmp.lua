local config = function()
	local cmp = require('cmp')
	local luasnip = require('luasnip')
	local behavior = {behavior = cmp.SelectBehavior.Select}

	cmp.setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end
		},

		sources = {
			{name = 'path'},
			{name = 'nvim_lsp'},
			{name = 'buffer', keyword_length = 3},
			{name = 'luasnip', keyword_length = w}
		},

		formatting = {
			fields = {'menu', 'abbr', 'kind'},
			format = function(entry, item)
				local menu_icon = {
					nvim_lsp = '[LSP]',
					luasnip = '[SNIP]',
					buffer = '[BUFF]',
					path = '[PATH]'
				}
				item.menu = menu_icon[entry.source.name]
				return item
			end
		},

		mapping = {
			--CTRL + e
			['<C-e>'] = cmp.mapping.abort(),

			['<CR>'] = cmp.mapping.confirm({select = false}),

			--setting behavior of tab
			['<Tab>'] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_next_item(behavior)
				else
					fallback()
				end
			end, {'i', 's'}),

			['<S-Tab>'] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_prev_item(behavior)
				else
					fallback()
				end
			end, {'i', 's'})
		}
	})
end

return {
	'hrsh7th/nvim-cmp',
	event = "InsertEnter",
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'L3MON4D3/LuaSnip',
	},
	config = config,
}
