local config = function()
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "bash", "c", "cpp", "lua", "java", "python" },

		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},

		indent = {
			enable = true
		},
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = config
}
