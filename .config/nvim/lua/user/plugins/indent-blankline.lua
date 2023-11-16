local blankline = {
  "lukas-reineke/indent-blankline.nvim",
  main= "ibl",
  init = function()
    require "indent-blankline.nvim"
  end,
  config = function(_, opts)
    require("indent_blankline").setup(opts)
  end,
}

return blankline
