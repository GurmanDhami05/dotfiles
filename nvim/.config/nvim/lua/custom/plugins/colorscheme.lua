return {
  {
    'folke/tokyonight.nvim',
    enabled = false, -- disable tokyonight
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        transparent_background = true,
        styles = {
          comments = { 'italic' },
          keywords = { 'italic' },
          functions = {},
          variables = {},
        },
        integrations = {
          telescope = true,
          bufferline = true,
          neotree = true,
          which_key = true,
          mini = true,
          gitsigns = true,
          treesitter = true,
          blink_cmp = true,
          indent_blankline = { enabled = true },
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
