local config = function()
	local lspconfig = require("lspconfig")
	local symbols = {Error = "!!", Warn = "!~", Hint = "^^", Info = "??"}

	lspconfig.clangd.setup{
		cmd = {"clangd", "--header-insertion=never"},
	}
	lspconfig.pyright.setup{}

end

return {
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = config,
}
