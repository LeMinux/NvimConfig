--CTRL + 1 in normal mode
vim.keymap.set("n", "<C-1>", ":vsp | Explore<CR>")

--CTRL + 2 in normal mode
vim.keymap.set("n", "<C-2>", ":lua vim.diagnostic.open_float()<CR>")
