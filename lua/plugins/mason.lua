return {
	"williamboman/mason.nvim",
	build = ":MasonUpdate", -- :MasonUpdate updates registry contents
	cmd = "Mason",
	event = "BufReadPre",
	config = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗"
			}
		}
	}
}
