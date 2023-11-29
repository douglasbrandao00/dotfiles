local dashboard = {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = {
    config = {
      header = {
        "      888888        d8888 888     888        d8888           ",
        "        888b       d88888 888     888       d88888           ",
        "         888      d88P888 888     888      d88P888           ",
        "         888     d88P 888 Y88b   d88P     d88P 888           ",
        "         888    d88P  888  Y88b d88P     d88P  888           ",
        "         888   d88P   888   Y88o88P     d88P   888           ",
        "         88P  d8888888888    Y888P     d8888888888           ",
        "         888 d88P     888     Y8P     d88P     888           ",
        "       .d88P                                                 ",
        "     .d88P'                                                  ",
        "    888P'                                                    ",
        "     .d8888b.  888     888  .d8888b.  888    d8P   .d8888b.  ",
        "    d88P  Y88b 888     888 d88P  Y88b 888   d8P   d88P  Y88b ",
        "    Y88b.      888     888 888    888 888  d8P    Y88b.      ",
        "     'Y888b.   888     888 888        888d88K      'Y888b.   ",
        "        'Y88b. 888     888 888        8888888b        'Y88b. ",
        "          '888 888     888 888    888 888  Y88b         '888 ",
        "    Y88b  d88P Y88b. .d88P Y88b  d88P 888   Y88b  Y88b  d88P ",
        "     'Y8888P'   'Y88888P'   'Y8888P'  888    Y88b  'Y8888P'  "
      },
      center ={},
      footer = {}
    },
    preview = {}
  },
  config = function(_, opts)
    require('dashboard').setup(opts)
  end
}

return dashboard
