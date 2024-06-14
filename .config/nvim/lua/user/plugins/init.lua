local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
local utils = require "user.utils"

local M = {}

local plugin_list = {
 	"nvim-lua/plenary.nvim",
 	"EdenEast/nightfox.nvim",
  "catppuccin/vim",
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  require("user.plugins.comment"),
	require("user.plugins.devicons"),
	require("user.plugins.gitsigns"),
	require("user.plugins.mason"),
	require("user.plugins.lspconfig"),
	require("user.plugins.cmp"),
	require("user.plugins.treesitter"),
	require("user.plugins.telescope"),
  require("user.plugins.dressing"),
  require("user.plugins.noice"),
  require("user.plugins.bufferline"),
  require("user.plugins.neo-tree"),
}

local function install_lazy_nvim()
  utils.echo "  Installing lazy.nvim & plugins ..."
  local repo = "https://github.com/folke/lazy.nvim.git"
  utils.shell_call { "git", "clone", "--filter=blob:none", "--branch=stable", repo, lazypath }
  vim.opt.rtp:prepend(lazypath)
end


M.bootstrap = function()
	if not vim.loop.fs_stat(lazypath) then
	    install_lazy_nvim(lazypath)
	end
	vim.opt.rtp:prepend(lazypath)
	require("lazy").setup(plugin_list, {})
end


return M
