require('user/vimSettings')
require('user/plugin')
require('user/treesitter')
require('user/nightfox')
require('user/engines')
require("mason").setup()

local lspconfig = require('lspconfig')
lspconfig.clangd.setup {}
