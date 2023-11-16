require "user.options"
require "user.keymaps"
local plugins = require "user.plugins"
plugins.bootstrap()

require "user.lsp"
vim.cmd "colorscheme nightfox"
