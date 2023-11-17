local comment = {
 	"numToStr/Comment.nvim",
  init = function ()
   require("Comment")
  end,
  opts = {
  opleader = {
    line = 'gc',
    block = 'gb'
  }
},
  config = function (_, opts)
    require("Comment").setup(opts)
  end
}

return comment
