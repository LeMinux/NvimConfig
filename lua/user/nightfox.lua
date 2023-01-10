local colorscheme = "duskfox"

local set, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not set then
	vim.notify("Could not load colorscheme ".. colorscheme);
	return
end
