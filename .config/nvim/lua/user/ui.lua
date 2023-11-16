local M = {}

M.config = {
  ------------------------------- base46 -------------------------------------
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "onedark", "one_light" },
  theme = "onedark", -- default theme
  transparency = false,
  lsp_semantic_tokens = false, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens

  -- https://github.com/NvChad/base46/tree/v2.0/lua/base46/extended_integrations
  extended_integrations = {}, -- these aren't compiled by default, ex: "alpha", "notify"
  telescope = { style = "borderless" }, -- borderless / bordered

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    overriden_modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },

  dashboard = {
    load_on_startup = false,

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
    buttons = { },
  },

  cheatsheet = { theme = "grid" }, -- simple/grid

  lsp = {
    -- show function signatures i.e args as you type
    signature = {
      disabled = false,
      silent = true, -- silences 'no signature help available' message from appearing
    },
  },
}

return M
