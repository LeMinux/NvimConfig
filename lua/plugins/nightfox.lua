local config = function()
	require('nightfox').setup({
		options = {
			styles = {               -- Style to be applied to different syntax groups
				comments = "NONE",     -- Value is any valid attr-list value `:help attr-list`
				conditionals = "NONE",
				constants = "NONE",
				functions = "NONE",
				keywords = "NONE",
				numbers = "NONE",
				operators = "NONE",
				strings = "NONE",
				types = "NONE",
				variables = "NONE",
			},
			inverse = {             -- Inverse highlight for different types
				match_paren = false,
				visual = true,
				search = false,
			},
			modules = {             -- List of various plugins and additional options
		
			},
		},
		palettes = {
			duskfox = {
				comment = "#BEBEBE"
			},
		},

		specs = {

		},

		groups = {
			duskfox = {
				Whitespace = {fg = "#866A82"},
			}
		},
	})

	--used to load overriden material
	require("nightfox").setup({ palettes = palettes, specs = specs, groups = groups })

	--loading of colorscheme
	local colorscheme = "duskfox"

	local status_ok, _ = pcall(vim.cmd, "colorscheme ".. colorscheme)
	if not status_ok then
		vim.notify("Could not load colorscheme ".. colorscheme);
		return
	end

end

return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 999,
	config = config,
	--build = ":colorscheme duskfox",
	
	--config = function()
	--	vim.cmd('colorscheme duskfox')
	--end
}

--[[
-- Default options
require('nightfox').setup({
	options = {
		styles = {               -- Style to be applied to different syntax groups
			comments = "NONE",     -- Value is any valid attr-list value `:help attr-list`
			conditionals = "NONE",
			constants = "NONE",
			functions = "NONE",
			keywords = "NONE",
			numbers = "NONE",
			operators = "NONE",
			strings = "NONE",
			types = "NONE",
			variables = "NONE",
		},
		inverse = {             -- Inverse highlight for different types
			match_paren = false,
			visual = true,
			search = false,
		},
		modules = {             -- List of various plugins and additional options
	
		},
	},
	palettes = {
		duskfox = {
			comment = "#BEBEBE"
		},
	},

	specs = {

	},

	groups = {
		duskfox = {
			Whitespace = {fg = "#866A82"},
		}
	},
})

--used to load overriden material
require("nightfox").setup({ palettes = palettes, specs = specs, groups = groups })

--loading of colorscheme
local colorscheme = "duskfox"

local status_ok, _ = pcall(vim.cmd, "colorscheme ".. colorscheme)
if not status_ok then
	vim.notify("Could not load colorscheme ".. colorscheme);
	return
end
--]]
