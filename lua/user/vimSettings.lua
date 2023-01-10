--spacing
vim.opt.tabstop = 5
vim.opt.shiftwidth = 5

--whitespace indicators
vim.opt.list = true
vim.opt.listchars = {
	tab = '|.',
	trail = '~'
}

--general indicators
vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.opt.number = true

--misc
--vim.opt.guifont = ""
vim.opt.termguicolors = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.clipboard = "unnamedplus"

--commands
vim.cmd "let $VIMRUNTIME=\"/home/mattboss/.local/share/nvim/runtime\""
