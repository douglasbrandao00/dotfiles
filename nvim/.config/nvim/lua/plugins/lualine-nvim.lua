-- Status line
return {
  -- https://github.com/nvim-lualine/lualine.nvim
  'nvim-lualine/lualine.nvim',
  dependencies = {
    -- https://github.com/nvim-tree/nvim-web-devicons
    'nvim-tree/nvim-web-devicons',    -- fancy icons
    -- https://github.com/linrongbin16/lsp-progress.nvim
    'linrongbin16/lsp-progress.nvim', -- LSP loading progress
  },
  opts = {
    options = {
      theme = "catppuccin",
      component_separators = '',
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
      lualine_b = { 'filename', 'branch' },
      lualine_c = {
        {
          'filename',
          file_status = true,
          newfile_status = false,
          path = 4,
          symbols = {
            modified = '[+]',
            readonly = '[-]',
          }
        }
      },
      lualine_z = {
        { 'location', separator = { right = '' }, left_padding = 2 },
      },
    }
  }
}
