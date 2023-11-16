
local lspconfig = {
    "neovim/nvim-lspconfig",
    init = function()
	    require("user.plugins.utils").lazy_load "nvim-lspconfig" 
    end
}

return lspconfig