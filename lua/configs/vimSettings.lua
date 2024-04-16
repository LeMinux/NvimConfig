local opt = vim.opt

--spacing
opt.tabstop = 5
opt.shiftwidth = 5
opt.softtabstop = 5
opt.smartindent = true
opt.wrap = true

--searching
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

--whitespace indicators
opt.list = true
opt.listchars = {
	tab = '|.',
	trail = '~'
}

--GUI indicators
opt.colorcolumn = "80"
opt.cursorline = true
opt.number = true

--behavior
opt.termguicolors = true
opt.splitbelow = true
opt.splitright = true
opt.clipboard:append("unnamedplus")
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.iskeyword:append("-")
opt.mouse:append('a')
opt.modifiable = true
opt.encoding = "UTF-8"
