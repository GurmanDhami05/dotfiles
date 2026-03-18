return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    indent = {
      char = '│', -- you can also try '▏' or '┊' for thinner lines
    },
    scope = {
      enabled = true, -- highlights the current scope you're in
      show_start = false,
      show_end = false,
    },
    exclude = {
      filetypes = {
        'help',
        'dashboard',
        'neo-tree',
        'lazy',
        'mason',
        'notify',
      },
    },
  },
}
